// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.bucket_logging_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/logging_enabled.dart';

part 'bucket_logging_status.g.dart';

/// Container for logging status information.
abstract class BucketLoggingStatus
    with _i1.AWSEquatable<BucketLoggingStatus>
    implements Built<BucketLoggingStatus, BucketLoggingStatusBuilder> {
  /// Container for logging status information.
  factory BucketLoggingStatus({LoggingEnabled? loggingEnabled}) {
    return _$BucketLoggingStatus._(loggingEnabled: loggingEnabled);
  }

  /// Container for logging status information.
  factory BucketLoggingStatus.build(
          [void Function(BucketLoggingStatusBuilder) updates]) =
      _$BucketLoggingStatus;

  const BucketLoggingStatus._();

  static const List<_i2.SmithySerializer<BucketLoggingStatus>> serializers = [
    BucketLoggingStatusRestXmlSerializer()
  ];

  /// Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a bucket. For more information, see [PUT Bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html) in the _Amazon S3 API Reference_.
  LoggingEnabled? get loggingEnabled;
  @override
  List<Object?> get props => [loggingEnabled];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BucketLoggingStatus')
      ..add(
        'loggingEnabled',
        loggingEnabled,
      );
    return helper.toString();
  }
}

class BucketLoggingStatusRestXmlSerializer
    extends _i2.StructuredSmithySerializer<BucketLoggingStatus> {
  const BucketLoggingStatusRestXmlSerializer() : super('BucketLoggingStatus');

  @override
  Iterable<Type> get types => const [
        BucketLoggingStatus,
        _$BucketLoggingStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  BucketLoggingStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BucketLoggingStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LoggingEnabled':
          result.loggingEnabled.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LoggingEnabled),
          ) as LoggingEnabled));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BucketLoggingStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'BucketLoggingStatus',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final BucketLoggingStatus(:loggingEnabled) = object;
    if (loggingEnabled != null) {
      result$
        ..add(const _i2.XmlElementName('LoggingEnabled'))
        ..add(serializers.serialize(
          loggingEnabled,
          specifiedType: const FullType(LoggingEnabled),
        ));
    }
    return result$;
  }
}
