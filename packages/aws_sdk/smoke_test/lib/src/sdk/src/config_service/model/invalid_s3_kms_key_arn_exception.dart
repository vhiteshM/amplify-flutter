// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.invalid_s3_kms_key_arn_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_s3_kms_key_arn_exception.g.dart';

/// The specified Amazon KMS Key ARN is not valid.
abstract class InvalidS3KmsKeyArnException
    with _i1.AWSEquatable<InvalidS3KmsKeyArnException>
    implements
        Built<InvalidS3KmsKeyArnException, InvalidS3KmsKeyArnExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified Amazon KMS Key ARN is not valid.
  factory InvalidS3KmsKeyArnException({String? message}) {
    return _$InvalidS3KmsKeyArnException._(message: message);
  }

  /// The specified Amazon KMS Key ARN is not valid.
  factory InvalidS3KmsKeyArnException.build(
          [void Function(InvalidS3KmsKeyArnExceptionBuilder) updates]) =
      _$InvalidS3KmsKeyArnException;

  const InvalidS3KmsKeyArnException._();

  /// Constructs a [InvalidS3KmsKeyArnException] from a [payload] and [response].
  factory InvalidS3KmsKeyArnException.fromResponse(
    InvalidS3KmsKeyArnException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidS3KmsKeyArnException>>
      serializers = [InvalidS3KmsKeyArnExceptionAwsJson11Serializer()];

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'InvalidS3KmsKeyArnException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidS3KmsKeyArnException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class InvalidS3KmsKeyArnExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidS3KmsKeyArnException> {
  const InvalidS3KmsKeyArnExceptionAwsJson11Serializer()
      : super('InvalidS3KmsKeyArnException');

  @override
  Iterable<Type> get types => const [
        InvalidS3KmsKeyArnException,
        _$InvalidS3KmsKeyArnException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidS3KmsKeyArnException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidS3KmsKeyArnExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InvalidS3KmsKeyArnException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InvalidS3KmsKeyArnException(:message) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
