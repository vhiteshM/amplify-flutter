// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.move_byoip_cidr_to_ipam_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'move_byoip_cidr_to_ipam_request.g.dart';

abstract class MoveByoipCidrToIpamRequest
    with
        _i1.HttpInput<MoveByoipCidrToIpamRequest>,
        _i2.AWSEquatable<MoveByoipCidrToIpamRequest>
    implements
        Built<MoveByoipCidrToIpamRequest, MoveByoipCidrToIpamRequestBuilder> {
  factory MoveByoipCidrToIpamRequest({
    bool? dryRun,
    String? cidr,
    String? ipamPoolId,
    String? ipamPoolOwner,
  }) {
    dryRun ??= false;
    return _$MoveByoipCidrToIpamRequest._(
      dryRun: dryRun,
      cidr: cidr,
      ipamPoolId: ipamPoolId,
      ipamPoolOwner: ipamPoolOwner,
    );
  }

  factory MoveByoipCidrToIpamRequest.build(
          [void Function(MoveByoipCidrToIpamRequestBuilder) updates]) =
      _$MoveByoipCidrToIpamRequest;

  const MoveByoipCidrToIpamRequest._();

  factory MoveByoipCidrToIpamRequest.fromRequest(
    MoveByoipCidrToIpamRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<MoveByoipCidrToIpamRequest>>
      serializers = [MoveByoipCidrToIpamRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MoveByoipCidrToIpamRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The BYOIP CIDR.
  String? get cidr;

  /// The IPAM pool ID.
  String? get ipamPoolId;

  /// The Amazon Web Services account ID of the owner of the IPAM pool.
  String? get ipamPoolOwner;
  @override
  MoveByoipCidrToIpamRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        cidr,
        ipamPoolId,
        ipamPoolOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MoveByoipCidrToIpamRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'cidr',
        cidr,
      )
      ..add(
        'ipamPoolId',
        ipamPoolId,
      )
      ..add(
        'ipamPoolOwner',
        ipamPoolOwner,
      );
    return helper.toString();
  }
}

class MoveByoipCidrToIpamRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<MoveByoipCidrToIpamRequest> {
  const MoveByoipCidrToIpamRequestEc2QuerySerializer()
      : super('MoveByoipCidrToIpamRequest');

  @override
  Iterable<Type> get types => const [
        MoveByoipCidrToIpamRequest,
        _$MoveByoipCidrToIpamRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  MoveByoipCidrToIpamRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MoveByoipCidrToIpamRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Cidr':
          result.cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IpamPoolId':
          result.ipamPoolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IpamPoolOwner':
          result.ipamPoolOwner = (serializers.deserialize(
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
    MoveByoipCidrToIpamRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'MoveByoipCidrToIpamRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final MoveByoipCidrToIpamRequest(
      :dryRun,
      :cidr,
      :ipamPoolId,
      :ipamPoolOwner
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (cidr != null) {
      result$
        ..add(const _i1.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamPoolId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamPoolId'))
        ..add(serializers.serialize(
          ipamPoolId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamPoolOwner != null) {
      result$
        ..add(const _i1.XmlElementName('IpamPoolOwner'))
        ..add(serializers.serialize(
          ipamPoolOwner,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
