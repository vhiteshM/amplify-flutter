// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.operation.update_stack_set_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_operation_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_id_already_exists_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_in_progress_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stale_request_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_set_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_set_output.dart';

/// Updates the stack set, and associated stack instances in the specified accounts and Amazon Web Services Regions.
///
/// Even if the stack set operation created by updating the stack set fails (completely or partially, below or above a specified failure tolerance), the stack set is updated with your changes. Subsequent CreateStackInstances calls on the specified stack set use the updated stack set.
class UpdateStackSetOperation extends _i1.HttpOperation<UpdateStackSetInput,
    UpdateStackSetInput, UpdateStackSetOutput, UpdateStackSetOutput> {
  /// Updates the stack set, and associated stack instances in the specified accounts and Amazon Web Services Regions.
  ///
  /// Even if the stack set operation created by updating the stack set fails (completely or partially, below or above a specified failure tolerance), the stack set is updated with your changes. Subsequent CreateStackInstances calls on the specified stack set use the updated stack set.
  UpdateStackSetOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.defaultChain(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<UpdateStackSetInput, UpdateStackSetInput,
          UpdateStackSetOutput, UpdateStackSetOutput>> protocols = [
    _i3.AwsQueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.cloudFormation,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'UpdateStackSet',
      version: '2010-05-15',
      awsQueryErrors: const [
        _i3.AwsQueryError(
          shape: 'InvalidOperationException',
          code: 'InvalidOperationException',
          httpResponseCode: 400,
        ),
        _i3.AwsQueryError(
          shape: 'OperationIdAlreadyExistsException',
          code: 'OperationIdAlreadyExistsException',
          httpResponseCode: 409,
        ),
        _i3.AwsQueryError(
          shape: 'OperationInProgressException',
          code: 'OperationInProgressException',
          httpResponseCode: 409,
        ),
        _i3.AwsQueryError(
          shape: 'StackInstanceNotFoundException',
          code: 'StackInstanceNotFoundException',
          httpResponseCode: 404,
        ),
        _i3.AwsQueryError(
          shape: 'StackSetNotFoundException',
          code: 'StackSetNotFoundException',
          httpResponseCode: 404,
        ),
        _i3.AwsQueryError(
          shape: 'StaleRequestException',
          code: 'StaleRequestException',
          httpResponseCode: 409,
        ),
      ],
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(UpdateStackSetInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([UpdateStackSetOutput? output]) => 200;
  @override
  UpdateStackSetOutput buildOutput(
    UpdateStackSetOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      UpdateStackSetOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InvalidOperationException, InvalidOperationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'InvalidOperationException',
          ),
          _i1.ErrorKind.client,
          InvalidOperationException,
          statusCode: 400,
          builder: InvalidOperationException.fromResponse,
        ),
        _i1.SmithyError<OperationIdAlreadyExistsException,
            OperationIdAlreadyExistsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'OperationIdAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          OperationIdAlreadyExistsException,
          statusCode: 409,
          builder: OperationIdAlreadyExistsException.fromResponse,
        ),
        _i1.SmithyError<OperationInProgressException,
            OperationInProgressException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'OperationInProgressException',
          ),
          _i1.ErrorKind.client,
          OperationInProgressException,
          statusCode: 409,
          builder: OperationInProgressException.fromResponse,
        ),
        _i1.SmithyError<StackInstanceNotFoundException,
            StackInstanceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'StackInstanceNotFoundException',
          ),
          _i1.ErrorKind.client,
          StackInstanceNotFoundException,
          statusCode: 404,
          builder: StackInstanceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<StackSetNotFoundException, StackSetNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'StackSetNotFoundException',
          ),
          _i1.ErrorKind.client,
          StackSetNotFoundException,
          statusCode: 404,
          builder: StackSetNotFoundException.fromResponse,
        ),
        _i1.SmithyError<StaleRequestException, StaleRequestException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'StaleRequestException',
          ),
          _i1.ErrorKind.client,
          StaleRequestException,
          statusCode: 409,
          builder: StaleRequestException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'UpdateStackSet';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<UpdateStackSetOutput> run(
    UpdateStackSetInput input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i5.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i4.AWSHeaders.sdkInvocationId: _i4.uuid(secure: true)},
      },
    );
  }
}
