// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.bucket_lifecycle_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule.dart';

part 'bucket_lifecycle_configuration.g.dart';

/// Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more information, see [Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html) in the _Amazon S3 User Guide_.
abstract class BucketLifecycleConfiguration
    with
        _i1.AWSEquatable<BucketLifecycleConfiguration>
    implements
        Built<BucketLifecycleConfiguration,
            BucketLifecycleConfigurationBuilder> {
  /// Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more information, see [Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html) in the _Amazon S3 User Guide_.
  factory BucketLifecycleConfiguration({required List<LifecycleRule> rules}) {
    return _$BucketLifecycleConfiguration._(rules: _i2.BuiltList(rules));
  }

  /// Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more information, see [Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html) in the _Amazon S3 User Guide_.
  factory BucketLifecycleConfiguration.build(
          [void Function(BucketLifecycleConfigurationBuilder) updates]) =
      _$BucketLifecycleConfiguration;

  const BucketLifecycleConfiguration._();

  static const List<_i3.SmithySerializer<BucketLifecycleConfiguration>>
      serializers = [BucketLifecycleConfigurationRestXmlSerializer()];

  /// A lifecycle rule for individual objects in an Amazon S3 bucket.
  _i2.BuiltList<LifecycleRule> get rules;
  @override
  List<Object?> get props => [rules];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BucketLifecycleConfiguration')
      ..add(
        'rules',
        rules,
      );
    return helper.toString();
  }
}

class BucketLifecycleConfigurationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<BucketLifecycleConfiguration> {
  const BucketLifecycleConfigurationRestXmlSerializer()
      : super('BucketLifecycleConfiguration');

  @override
  Iterable<Type> get types => const [
        BucketLifecycleConfiguration,
        _$BucketLifecycleConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  BucketLifecycleConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BucketLifecycleConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(LifecycleRule),
          ) as LifecycleRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BucketLifecycleConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'BucketLifecycleConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final BucketLifecycleConfiguration(:rules) = object;
    result$
        .addAll(const _i3.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      rules,
      specifiedType: const FullType.nullable(
        _i2.BuiltList,
        [FullType(LifecycleRule)],
      ),
    ));
    return result$;
  }
}
