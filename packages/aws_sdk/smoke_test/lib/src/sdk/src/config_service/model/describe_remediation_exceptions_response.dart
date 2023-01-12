// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.describe_remediation_exceptions_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_exception.dart'
    as _i2;

part 'describe_remediation_exceptions_response.g.dart';

abstract class DescribeRemediationExceptionsResponse
    with
        _i1.AWSEquatable<DescribeRemediationExceptionsResponse>
    implements
        Built<DescribeRemediationExceptionsResponse,
            DescribeRemediationExceptionsResponseBuilder> {
  factory DescribeRemediationExceptionsResponse({
    String? nextToken,
    List<_i2.RemediationException>? remediationExceptions,
  }) {
    return _$DescribeRemediationExceptionsResponse._(
      nextToken: nextToken,
      remediationExceptions: remediationExceptions == null
          ? null
          : _i3.BuiltList(remediationExceptions),
    );
  }

  factory DescribeRemediationExceptionsResponse.build(
      [void Function(DescribeRemediationExceptionsResponseBuilder)
          updates]) = _$DescribeRemediationExceptionsResponse;

  const DescribeRemediationExceptionsResponse._();

  /// Constructs a [DescribeRemediationExceptionsResponse] from a [payload] and [response].
  factory DescribeRemediationExceptionsResponse.fromResponse(
    DescribeRemediationExceptionsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeRemediationExceptionsResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeRemediationExceptionsResponseBuilder b) {}

  /// The `nextToken` string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;

  /// Returns a list of remediation exception objects.
  _i3.BuiltList<_i2.RemediationException>? get remediationExceptions;
  @override
  List<Object?> get props => [
        nextToken,
        remediationExceptions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeRemediationExceptionsResponse');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'remediationExceptions',
      remediationExceptions,
    );
    return helper.toString();
  }
}

class DescribeRemediationExceptionsResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeRemediationExceptionsResponse> {
  const DescribeRemediationExceptionsResponseAwsJson11Serializer()
      : super('DescribeRemediationExceptionsResponse');

  @override
  Iterable<Type> get types => const [
        DescribeRemediationExceptionsResponse,
        _$DescribeRemediationExceptionsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeRemediationExceptionsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeRemediationExceptionsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RemediationExceptions':
          if (value != null) {
            result.remediationExceptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.RemediationException)],
              ),
            ) as _i3.BuiltList<_i2.RemediationException>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DescribeRemediationExceptionsResponse);
    final result = <Object?>[];
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.remediationExceptions != null) {
      result
        ..add('RemediationExceptions')
        ..add(serializers.serialize(
          payload.remediationExceptions!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.RemediationException)],
          ),
        ));
    }
    return result;
  }
}
