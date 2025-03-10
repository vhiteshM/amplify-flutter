// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.update_time_to_live_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_to_live_specification.dart';

part 'update_time_to_live_output.g.dart';

abstract class UpdateTimeToLiveOutput
    with _i1.AWSEquatable<UpdateTimeToLiveOutput>
    implements Built<UpdateTimeToLiveOutput, UpdateTimeToLiveOutputBuilder> {
  factory UpdateTimeToLiveOutput(
      {TimeToLiveSpecification? timeToLiveSpecification}) {
    return _$UpdateTimeToLiveOutput._(
        timeToLiveSpecification: timeToLiveSpecification);
  }

  factory UpdateTimeToLiveOutput.build(
          [void Function(UpdateTimeToLiveOutputBuilder) updates]) =
      _$UpdateTimeToLiveOutput;

  const UpdateTimeToLiveOutput._();

  /// Constructs a [UpdateTimeToLiveOutput] from a [payload] and [response].
  factory UpdateTimeToLiveOutput.fromResponse(
    UpdateTimeToLiveOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<UpdateTimeToLiveOutput>> serializers =
      [UpdateTimeToLiveOutputAwsJson10Serializer()];

  /// Represents the output of an `UpdateTimeToLive` operation.
  TimeToLiveSpecification? get timeToLiveSpecification;
  @override
  List<Object?> get props => [timeToLiveSpecification];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateTimeToLiveOutput')
      ..add(
        'timeToLiveSpecification',
        timeToLiveSpecification,
      );
    return helper.toString();
  }
}

class UpdateTimeToLiveOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<UpdateTimeToLiveOutput> {
  const UpdateTimeToLiveOutputAwsJson10Serializer()
      : super('UpdateTimeToLiveOutput');

  @override
  Iterable<Type> get types => const [
        UpdateTimeToLiveOutput,
        _$UpdateTimeToLiveOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateTimeToLiveOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTimeToLiveOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TimeToLiveSpecification':
          result.timeToLiveSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TimeToLiveSpecification),
          ) as TimeToLiveSpecification));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateTimeToLiveOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateTimeToLiveOutput(:timeToLiveSpecification) = object;
    if (timeToLiveSpecification != null) {
      result$
        ..add('TimeToLiveSpecification')
        ..add(serializers.serialize(
          timeToLiveSpecification,
          specifiedType: const FullType(TimeToLiveSpecification),
        ));
    }
    return result$;
  }
}
