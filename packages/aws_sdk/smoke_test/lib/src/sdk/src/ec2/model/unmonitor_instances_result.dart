// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.unmonitor_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_monitoring.dart';

part 'unmonitor_instances_result.g.dart';

abstract class UnmonitorInstancesResult
    with _i1.AWSEquatable<UnmonitorInstancesResult>
    implements
        Built<UnmonitorInstancesResult, UnmonitorInstancesResultBuilder> {
  factory UnmonitorInstancesResult(
      {List<InstanceMonitoring>? instanceMonitorings}) {
    return _$UnmonitorInstancesResult._(
        instanceMonitorings: instanceMonitorings == null
            ? null
            : _i2.BuiltList(instanceMonitorings));
  }

  factory UnmonitorInstancesResult.build(
          [void Function(UnmonitorInstancesResultBuilder) updates]) =
      _$UnmonitorInstancesResult;

  const UnmonitorInstancesResult._();

  /// Constructs a [UnmonitorInstancesResult] from a [payload] and [response].
  factory UnmonitorInstancesResult.fromResponse(
    UnmonitorInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<UnmonitorInstancesResult>>
      serializers = [UnmonitorInstancesResultEc2QuerySerializer()];

  /// The monitoring information.
  _i2.BuiltList<InstanceMonitoring>? get instanceMonitorings;
  @override
  List<Object?> get props => [instanceMonitorings];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UnmonitorInstancesResult')
      ..add(
        'instanceMonitorings',
        instanceMonitorings,
      );
    return helper.toString();
  }
}

class UnmonitorInstancesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<UnmonitorInstancesResult> {
  const UnmonitorInstancesResultEc2QuerySerializer()
      : super('UnmonitorInstancesResult');

  @override
  Iterable<Type> get types => const [
        UnmonitorInstancesResult,
        _$UnmonitorInstancesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UnmonitorInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnmonitorInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instancesSet':
          result.instanceMonitorings.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceMonitoring)],
            ),
          ) as _i2.BuiltList<InstanceMonitoring>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UnmonitorInstancesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'UnmonitorInstancesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final UnmonitorInstancesResult(:instanceMonitorings) = object;
    if (instanceMonitorings != null) {
      result$
        ..add(const _i3.XmlElementName('InstancesSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceMonitorings,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(InstanceMonitoring)],
          ),
        ));
    }
    return result$;
  }
}
