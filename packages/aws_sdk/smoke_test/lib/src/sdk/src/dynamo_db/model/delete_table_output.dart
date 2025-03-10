// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.delete_table_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_description.dart';

part 'delete_table_output.g.dart';

/// Represents the output of a `DeleteTable` operation.
abstract class DeleteTableOutput
    with _i1.AWSEquatable<DeleteTableOutput>
    implements Built<DeleteTableOutput, DeleteTableOutputBuilder> {
  /// Represents the output of a `DeleteTable` operation.
  factory DeleteTableOutput({TableDescription? tableDescription}) {
    return _$DeleteTableOutput._(tableDescription: tableDescription);
  }

  /// Represents the output of a `DeleteTable` operation.
  factory DeleteTableOutput.build(
      [void Function(DeleteTableOutputBuilder) updates]) = _$DeleteTableOutput;

  const DeleteTableOutput._();

  /// Constructs a [DeleteTableOutput] from a [payload] and [response].
  factory DeleteTableOutput.fromResponse(
    DeleteTableOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteTableOutput>> serializers = [
    DeleteTableOutputAwsJson10Serializer()
  ];

  /// Represents the properties of a table.
  TableDescription? get tableDescription;
  @override
  List<Object?> get props => [tableDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteTableOutput')
      ..add(
        'tableDescription',
        tableDescription,
      );
    return helper.toString();
  }
}

class DeleteTableOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<DeleteTableOutput> {
  const DeleteTableOutputAwsJson10Serializer() : super('DeleteTableOutput');

  @override
  Iterable<Type> get types => const [
        DeleteTableOutput,
        _$DeleteTableOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DeleteTableOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTableOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableDescription':
          result.tableDescription.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TableDescription),
          ) as TableDescription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteTableOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeleteTableOutput(:tableDescription) = object;
    if (tableDescription != null) {
      result$
        ..add('TableDescription')
        ..add(serializers.serialize(
          tableDescription,
          specifiedType: const FullType(TableDescription),
        ));
    }
    return result$;
  }
}
