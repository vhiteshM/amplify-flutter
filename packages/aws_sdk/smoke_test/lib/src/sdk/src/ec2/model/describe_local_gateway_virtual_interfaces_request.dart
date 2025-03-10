// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_local_gateway_virtual_interfaces_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_local_gateway_virtual_interfaces_request.g.dart';

abstract class DescribeLocalGatewayVirtualInterfacesRequest
    with
        _i1.HttpInput<DescribeLocalGatewayVirtualInterfacesRequest>,
        _i2.AWSEquatable<DescribeLocalGatewayVirtualInterfacesRequest>
    implements
        Built<DescribeLocalGatewayVirtualInterfacesRequest,
            DescribeLocalGatewayVirtualInterfacesRequestBuilder> {
  factory DescribeLocalGatewayVirtualInterfacesRequest({
    List<String>? localGatewayVirtualInterfaceIds,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeLocalGatewayVirtualInterfacesRequest._(
      localGatewayVirtualInterfaceIds: localGatewayVirtualInterfaceIds == null
          ? null
          : _i3.BuiltList(localGatewayVirtualInterfaceIds),
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory DescribeLocalGatewayVirtualInterfacesRequest.build(
      [void Function(DescribeLocalGatewayVirtualInterfacesRequestBuilder)
          updates]) = _$DescribeLocalGatewayVirtualInterfacesRequest;

  const DescribeLocalGatewayVirtualInterfacesRequest._();

  factory DescribeLocalGatewayVirtualInterfacesRequest.fromRequest(
    DescribeLocalGatewayVirtualInterfacesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeLocalGatewayVirtualInterfacesRequest>>
      serializers = [
    DescribeLocalGatewayVirtualInterfacesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLocalGatewayVirtualInterfacesRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The IDs of the virtual interfaces.
  _i3.BuiltList<String>? get localGatewayVirtualInterfaceIds;

  /// One or more filters.
  ///
  /// *   `local-address` \- The local address.
  ///
  /// *   `local-bgp-asn` \- The Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the local gateway.
  ///
  /// *   `local-gateway-id` \- The ID of the local gateway.
  ///
  /// *   `local-gateway-virtual-interface-id` \- The ID of the virtual interface.
  ///
  /// *   `owner-id` \- The ID of the Amazon Web Services account that owns the local gateway virtual interface.
  ///
  /// *   `peer-address` \- The peer address.
  ///
  /// *   `peer-bgp-asn` \- The peer BGP ASN.
  ///
  /// *   `vlan` \- The ID of the VLAN.
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeLocalGatewayVirtualInterfacesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        localGatewayVirtualInterfaceIds,
        filters,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeLocalGatewayVirtualInterfacesRequest')
      ..add(
        'localGatewayVirtualInterfaceIds',
        localGatewayVirtualInterfaceIds,
      )
      ..add(
        'filters',
        filters,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DescribeLocalGatewayVirtualInterfacesRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeLocalGatewayVirtualInterfacesRequest> {
  const DescribeLocalGatewayVirtualInterfacesRequestEc2QuerySerializer()
      : super('DescribeLocalGatewayVirtualInterfacesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeLocalGatewayVirtualInterfacesRequest,
        _$DescribeLocalGatewayVirtualInterfacesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLocalGatewayVirtualInterfacesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLocalGatewayVirtualInterfacesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LocalGatewayVirtualInterfaceId':
          result.localGatewayVirtualInterfaceIds
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeLocalGatewayVirtualInterfacesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeLocalGatewayVirtualInterfacesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeLocalGatewayVirtualInterfacesRequest(
      :localGatewayVirtualInterfaceIds,
      :filters,
      :maxResults,
      :nextToken,
      :dryRun
    ) = object;
    if (localGatewayVirtualInterfaceIds != null) {
      result$
        ..add(const _i1.XmlElementName('LocalGatewayVirtualInterfaceId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          localGatewayVirtualInterfaceIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
