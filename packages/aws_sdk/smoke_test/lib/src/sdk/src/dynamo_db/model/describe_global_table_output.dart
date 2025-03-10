// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.describe_global_table_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_description.dart';

part 'describe_global_table_output.g.dart';

abstract class DescribeGlobalTableOutput
    with _i1.AWSEquatable<DescribeGlobalTableOutput>
    implements
        Built<DescribeGlobalTableOutput, DescribeGlobalTableOutputBuilder> {
  factory DescribeGlobalTableOutput(
      {GlobalTableDescription? globalTableDescription}) {
    return _$DescribeGlobalTableOutput._(
        globalTableDescription: globalTableDescription);
  }

  factory DescribeGlobalTableOutput.build(
          [void Function(DescribeGlobalTableOutputBuilder) updates]) =
      _$DescribeGlobalTableOutput;

  const DescribeGlobalTableOutput._();

  /// Constructs a [DescribeGlobalTableOutput] from a [payload] and [response].
  factory DescribeGlobalTableOutput.fromResponse(
    DescribeGlobalTableOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DescribeGlobalTableOutput>>
      serializers = [DescribeGlobalTableOutputAwsJson10Serializer()];

  /// Contains the details of the global table.
  GlobalTableDescription? get globalTableDescription;
  @override
  List<Object?> get props => [globalTableDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeGlobalTableOutput')
      ..add(
        'globalTableDescription',
        globalTableDescription,
      );
    return helper.toString();
  }
}

class DescribeGlobalTableOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<DescribeGlobalTableOutput> {
  const DescribeGlobalTableOutputAwsJson10Serializer()
      : super('DescribeGlobalTableOutput');

  @override
  Iterable<Type> get types => const [
        DescribeGlobalTableOutput,
        _$DescribeGlobalTableOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeGlobalTableOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeGlobalTableOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GlobalTableDescription':
          result.globalTableDescription.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(GlobalTableDescription),
          ) as GlobalTableDescription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeGlobalTableOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeGlobalTableOutput(:globalTableDescription) = object;
    if (globalTableDescription != null) {
      result$
        ..add('GlobalTableDescription')
        ..add(serializers.serialize(
          globalTableDescription,
          specifiedType: const FullType(GlobalTableDescription),
        ));
    }
    return result$;
  }
}
