// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cognito_identity from "@aws-cdk/aws-cognito-identitypool-alpha";
import * as cdk from "aws-cdk-lib";
import { RemovalPolicy } from "aws-cdk-lib";
import * as cognito from "aws-cdk-lib/aws-cognito";
import * as iam from "aws-cdk-lib/aws-iam";
import * as lambda from "aws-cdk-lib/aws-lambda";
import * as lambda_nodejs from "aws-cdk-lib/aws-lambda-nodejs";
import * as s3 from "aws-cdk-lib/aws-s3";
import { Construct } from "constructs";
import {
  AmplifyCategory,
  IntegrationTestStack,
  IntegrationTestStackEnvironment,
  IntegrationTestStackEnvironmentProps
} from "../common";

export enum StorageAccessLevel {
  public = "guest",
  protected = "protected",
  private = "private",
}

enum StoragePermission {
  get = "s3:GetObject",
  put = "s3:PutObject",
  delete = "s3:DeleteObject",
}

interface StorageIntegrationTestEnvironmentProps
  extends IntegrationTestStackEnvironmentProps {
  /**
   * The default access level for the environment.
   */
  defaultAccessLevel?: StorageAccessLevel;

  /**
   * The access levels and accompanying permissions.
   */
  accessLevels?: Record<StorageAccessLevel, StoragePermission[]>;

  /**
   * Resolves the bucket key prefix for a given `accessLevel` and `identityId`.
   */
  prefixResolver?: (
    accessLevel: StorageAccessLevel,
    identityId: string
  ) => string;

  prefixOverrides?: Record<StorageAccessLevel, String>;

  /**
   * The name of the bucket. If not provided, it will be auto-generated.
   */
  bucketName?: string;

  enableTransferAcceleration?: boolean;
}

export class StorageIntegrationTestStack extends IntegrationTestStack<
  StorageIntegrationTestEnvironmentProps,
  StorageIntegrationTestEnvironment
> {
  constructor(
    scope: Construct,
    environments: StorageIntegrationTestEnvironmentProps[],
    props?: cdk.NestedStackProps
  ) {
    super({
      scope,
      category: AmplifyCategory.Storage,
      environments,
      props,
    });
  }

  protected buildEnvironments(
    environments: StorageIntegrationTestEnvironmentProps[]
  ): StorageIntegrationTestEnvironment[] {
    return environments.map(
      (environment) =>
        new StorageIntegrationTestEnvironment(this, this.baseName, environment)
    );
  }
}

class StorageIntegrationTestEnvironment extends IntegrationTestStackEnvironment<StorageIntegrationTestEnvironmentProps> {
  constructor(
    scope: Construct,
    baseName: string,
    props: StorageIntegrationTestEnvironmentProps
  ) {
    super(scope, baseName, props);

    // Create the bucket

    const bucket = new s3.Bucket(this, "Bucket", {
      bucketName: props.bucketName,
      transferAcceleration: props.enableTransferAcceleration,
      removalPolicy: RemovalPolicy.DESTROY,
      autoDeleteObjects: true,
      blockPublicAccess: s3.BlockPublicAccess.BLOCK_ALL,
      enforceSSL: true,
      objectOwnership: s3.ObjectOwnership.BUCKET_OWNER_ENFORCED,
      cors: [
        // Matches configuration generated by Amplify CLI
        {
          allowedMethods: [
            s3.HttpMethods.GET,
            s3.HttpMethods.PUT,
            s3.HttpMethods.HEAD,
            s3.HttpMethods.POST,
            s3.HttpMethods.DELETE,
          ],
          allowedHeaders: ["*"],
          allowedOrigins: ["*"],
          exposedHeaders: [
            "x-amz-server-side-encryption",
            "x-amz-request-id",
            "x-amz-id-2",
            "ETag",
            // This is required workaround on Web to retrieve metadata fields
            // via GetObject and HeadObject.
            // https://github.com/aws-amplify/amplify-js/issues/2903#issuecomment-475012164
            "x-amz-meta-filename",
            "x-amz-meta-description",
            "x-amz-meta-owner",
          ],
          maxAge: 3000,
        },
      ],
    });

    // Create the Cognito User Pool

    // Pre sign-up trigger to auto-confirm users.
    const autoConfirmTrigger = new lambda_nodejs.NodejsFunction(
      this,
      "auto-confirm",
      {
        runtime: lambda.Runtime.NODEJS_18_X,
      }
    );

    const mfa = cognito.Mfa.OFF;
    const userPool = new cognito.UserPool(this, "UserPool", {
      userPoolName: this.name,
      removalPolicy: RemovalPolicy.DESTROY,
      selfSignUpEnabled: true,
      accountRecovery: cognito.AccountRecovery.NONE,
      mfa,
      lambdaTriggers: {
        preSignUp: autoConfirmTrigger,
      },
    });
    this.createUserCleanupJob(userPool);

    const userPoolClient = userPool.addClient("UserPoolClient", {
      authFlows: {
        userSrp: true,
      },
      disableOAuth: true,
    });

    // Create the Cognito Identity Pool

    const identityPool = new cognito_identity.IdentityPool(this, "IdentityPool", {
      identityPoolName: this.name,
      allowUnauthenticatedIdentities: true,
      authenticationProviders: {
        userPools: [
          new cognito_identity.UserPoolAuthenticationProvider({ userPool, userPoolClient })
        ]
      },
    });

    const identityId = "${cognito-identity.amazonaws.com:sub}";
    const prefixes: Record<StorageAccessLevel, string> = {
      [StorageAccessLevel.public]: props.prefixResolver
        ? props.prefixResolver(StorageAccessLevel.public, identityId)
        : "public/",
      [StorageAccessLevel.protected]: props.prefixResolver
        ? props.prefixResolver(StorageAccessLevel.protected, identityId)
        : `protected/${identityId}/`,
      [StorageAccessLevel.private]: props.prefixResolver
        ? props.prefixResolver(StorageAccessLevel.private, identityId)
        : `private/${identityId}/`,
    };
    const prefixOverrides = props.prefixOverrides;
    const buildPolicyDocument = (accessLevel: StorageAccessLevel) => {
      let permissions = [
        StoragePermission.get,
        StoragePermission.put,
        StoragePermission.delete,
      ];
      if (props.accessLevels) {
        permissions = props.accessLevels[accessLevel];
      }
      const prefix = prefixes[accessLevel];
      return new iam.PolicyDocument({
        statements: [
          new iam.PolicyStatement({
            actions: permissions,
            resources: [`${bucket.bucketArn}/${prefix}*`],
          }),
        ],
      });
    };

    const unauthenticatedPolicies: Record<string, iam.PolicyDocument> = {
      "read-unauth": new iam.PolicyDocument({
        statements: [
          new iam.PolicyStatement({
            actions: ["s3:ListBucket"],
            conditions: {
              StringLike: {
                "s3:prefix": Array.from(
                  new Set(
                    [
                      `${prefixes[StorageAccessLevel.public]}`,
                      `${prefixes[StorageAccessLevel.public]}*`,
                      `${prefixes[StorageAccessLevel.protected]}`,
                      `${prefixes[StorageAccessLevel.protected]}*`,
                      `${prefixOverrides?.[StorageAccessLevel.protected] ??
                      "protected"
                      }/`,
                      `${prefixOverrides?.[StorageAccessLevel.protected] ??
                      "protected"
                      }/*`,
                    ].filter((val) => val !== "")
                  )
                ),
              },
            },
            resources: [bucket.bucketArn],
          }),
        ],
      }),
      public: buildPolicyDocument(StorageAccessLevel.public),
      protected: buildPolicyDocument(StorageAccessLevel.protected),
    };
    for (const [name, document] of Object.entries(unauthenticatedPolicies)) {
      identityPool.unauthenticatedRole.attachInlinePolicy(
        new iam.Policy(this, `unauthenticated-${name}`, { document })
      )
    }

    const authenticatedPolicies: Record<string, iam.PolicyDocument> = {
      ...unauthenticatedPolicies,
      "read-auth": new iam.PolicyDocument({
        statements: [
          new iam.PolicyStatement({
            actions: ["s3:GetObject"],
            resources: [
              `${bucket.bucketArn}/${prefixOverrides?.[StorageAccessLevel.protected] ?? "protected"
              }/*`,
            ],
          }),
          new iam.PolicyStatement({
            actions: ["s3:ListBucket"],
            conditions: {
              StringLike: {
                "s3:prefix": [
                  `${prefixes[StorageAccessLevel.private]}`,
                  `${prefixes[StorageAccessLevel.private]}*`,
                ],
              },
            },
            resources: [bucket.bucketArn],
          }),
        ],
      }),
      private: buildPolicyDocument(StorageAccessLevel.private),
    };
    for (const [name, document] of Object.entries(authenticatedPolicies)) {
      identityPool.authenticatedRole.attachInlinePolicy(
        new iam.Policy(this, `authenticated-${name}`, { document })
      )
    }

    // Save the values needed to build our Amplify configuration.

    this.config = {
      authConfig: {
        userPoolConfig: {
          userPoolId: userPool.userPoolId,
          userPoolClientId: userPoolClient.userPoolClientId,
          mfa,
        },
        identityPoolConfig: {
          identityPoolId: identityPool.identityPoolId,
        },
      },
      storageConfig: {
        bucket: bucket.bucketName,
        defaultAccessLevel:
          props.defaultAccessLevel || StorageAccessLevel.public,
      },
    };
  }
}
