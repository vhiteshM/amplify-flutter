// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_snapshots_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot.dart';

part 'describe_snapshots_result.g.dart';

abstract class DescribeSnapshotsResult
    with _i1.AWSEquatable<DescribeSnapshotsResult>
    implements Built<DescribeSnapshotsResult, DescribeSnapshotsResultBuilder> {
  factory DescribeSnapshotsResult({
    List<Snapshot>? snapshots,
    String? nextToken,
  }) {
    return _$DescribeSnapshotsResult._(
      snapshots: snapshots == null ? null : _i2.BuiltList(snapshots),
      nextToken: nextToken,
    );
  }

  factory DescribeSnapshotsResult.build(
          [void Function(DescribeSnapshotsResultBuilder) updates]) =
      _$DescribeSnapshotsResult;

  const DescribeSnapshotsResult._();

  /// Constructs a [DescribeSnapshotsResult] from a [payload] and [response].
  factory DescribeSnapshotsResult.fromResponse(
    DescribeSnapshotsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeSnapshotsResult>> serializers =
      [DescribeSnapshotsResultEc2QuerySerializer()];

  /// Information about the snapshots.
  _i2.BuiltList<Snapshot>? get snapshots;

  /// The token to include in another request to return the next page of snapshots. This value is `null` when there are no more snapshots to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        snapshots,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeSnapshotsResult')
      ..add(
        'snapshots',
        snapshots,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeSnapshotsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeSnapshotsResult> {
  const DescribeSnapshotsResultEc2QuerySerializer()
      : super('DescribeSnapshotsResult');

  @override
  Iterable<Type> get types => const [
        DescribeSnapshotsResult,
        _$DescribeSnapshotsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSnapshotsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSnapshotsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'snapshotSet':
          result.snapshots.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Snapshot)],
            ),
          ) as _i2.BuiltList<Snapshot>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeSnapshotsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeSnapshotsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSnapshotsResult(:snapshots, :nextToken) = object;
    if (snapshots != null) {
      result$
        ..add(const _i3.XmlElementName('SnapshotSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          snapshots,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Snapshot)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
