// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.get_stored_query_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/stored_query.dart';

part 'get_stored_query_response.g.dart';

abstract class GetStoredQueryResponse
    with _i1.AWSEquatable<GetStoredQueryResponse>
    implements Built<GetStoredQueryResponse, GetStoredQueryResponseBuilder> {
  factory GetStoredQueryResponse({StoredQuery? storedQuery}) {
    return _$GetStoredQueryResponse._(storedQuery: storedQuery);
  }

  factory GetStoredQueryResponse.build(
          [void Function(GetStoredQueryResponseBuilder) updates]) =
      _$GetStoredQueryResponse;

  const GetStoredQueryResponse._();

  /// Constructs a [GetStoredQueryResponse] from a [payload] and [response].
  factory GetStoredQueryResponse.fromResponse(
    GetStoredQueryResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetStoredQueryResponse>> serializers =
      [GetStoredQueryResponseAwsJson11Serializer()];

  /// Returns a `StoredQuery` object.
  StoredQuery? get storedQuery;
  @override
  List<Object?> get props => [storedQuery];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetStoredQueryResponse')
      ..add(
        'storedQuery',
        storedQuery,
      );
    return helper.toString();
  }
}

class GetStoredQueryResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<GetStoredQueryResponse> {
  const GetStoredQueryResponseAwsJson11Serializer()
      : super('GetStoredQueryResponse');

  @override
  Iterable<Type> get types => const [
        GetStoredQueryResponse,
        _$GetStoredQueryResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetStoredQueryResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetStoredQueryResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StoredQuery':
          result.storedQuery.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StoredQuery),
          ) as StoredQuery));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetStoredQueryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetStoredQueryResponse(:storedQuery) = object;
    if (storedQuery != null) {
      result$
        ..add('StoredQuery')
        ..add(serializers.serialize(
          storedQuery,
          specifiedType: const FullType(StoredQuery),
        ));
    }
    return result$;
  }
}
