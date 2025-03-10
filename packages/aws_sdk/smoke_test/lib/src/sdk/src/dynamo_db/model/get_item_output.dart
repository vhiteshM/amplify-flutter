// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.get_item_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart';

part 'get_item_output.g.dart';

/// Represents the output of a `GetItem` operation.
abstract class GetItemOutput
    with _i1.AWSEquatable<GetItemOutput>
    implements Built<GetItemOutput, GetItemOutputBuilder> {
  /// Represents the output of a `GetItem` operation.
  factory GetItemOutput({
    Map<String, AttributeValue>? item,
    ConsumedCapacity? consumedCapacity,
  }) {
    return _$GetItemOutput._(
      item: item == null ? null : _i2.BuiltMap(item),
      consumedCapacity: consumedCapacity,
    );
  }

  /// Represents the output of a `GetItem` operation.
  factory GetItemOutput.build([void Function(GetItemOutputBuilder) updates]) =
      _$GetItemOutput;

  const GetItemOutput._();

  /// Constructs a [GetItemOutput] from a [payload] and [response].
  factory GetItemOutput.fromResponse(
    GetItemOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetItemOutput>> serializers = [
    GetItemOutputAwsJson10Serializer()
  ];

  /// A map of attribute names to `AttributeValue` objects, as specified by `ProjectionExpression`.
  _i2.BuiltMap<String, AttributeValue>? get item;

  /// The capacity units consumed by the `GetItem` operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. `ConsumedCapacity` is only returned if the `ReturnConsumedCapacity` parameter was specified. For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html#ItemSizeCalculations.Reads) in the _Amazon DynamoDB Developer Guide_.
  ConsumedCapacity? get consumedCapacity;
  @override
  List<Object?> get props => [
        item,
        consumedCapacity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetItemOutput')
      ..add(
        'item',
        item,
      )
      ..add(
        'consumedCapacity',
        consumedCapacity,
      );
    return helper.toString();
  }
}

class GetItemOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<GetItemOutput> {
  const GetItemOutputAwsJson10Serializer() : super('GetItemOutput');

  @override
  Iterable<Type> get types => const [
        GetItemOutput,
        _$GetItemOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  GetItemOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetItemOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Item':
          result.item.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(AttributeValue),
              ],
            ),
          ) as _i2.BuiltMap<String, AttributeValue>));
        case 'ConsumedCapacity':
          result.consumedCapacity.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ConsumedCapacity),
          ) as ConsumedCapacity));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetItemOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetItemOutput(:item, :consumedCapacity) = object;
    if (item != null) {
      result$
        ..add('Item')
        ..add(serializers.serialize(
          item,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(AttributeValue),
            ],
          ),
        ));
    }
    if (consumedCapacity != null) {
      result$
        ..add('ConsumedCapacity')
        ..add(serializers.serialize(
          consumedCapacity,
          specifiedType: const FullType(ConsumedCapacity),
        ));
    }
    return result$;
  }
}
