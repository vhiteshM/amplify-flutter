// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.table_in_use_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'table_in_use_exception.g.dart';

/// A target table with the specified name is either being created or deleted.
abstract class TableInUseException
    with _i1.AWSEquatable<TableInUseException>
    implements
        Built<TableInUseException, TableInUseExceptionBuilder>,
        _i2.SmithyHttpException {
  /// A target table with the specified name is either being created or deleted.
  factory TableInUseException({String? message}) {
    return _$TableInUseException._(message: message);
  }

  /// A target table with the specified name is either being created or deleted.
  factory TableInUseException.build(
          [void Function(TableInUseExceptionBuilder) updates]) =
      _$TableInUseException;

  const TableInUseException._();

  /// Constructs a [TableInUseException] from a [payload] and [response].
  factory TableInUseException.fromResponse(
    TableInUseException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<TableInUseException>> serializers = [
    TableInUseExceptionAwsJson10Serializer()
  ];

  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'TableInUseException',
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
    final helper = newBuiltValueToStringHelper('TableInUseException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class TableInUseExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<TableInUseException> {
  const TableInUseExceptionAwsJson10Serializer() : super('TableInUseException');

  @override
  Iterable<Type> get types => const [
        TableInUseException,
        _$TableInUseException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TableInUseException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TableInUseExceptionBuilder();
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
    TableInUseException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TableInUseException(:message) = object;
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
