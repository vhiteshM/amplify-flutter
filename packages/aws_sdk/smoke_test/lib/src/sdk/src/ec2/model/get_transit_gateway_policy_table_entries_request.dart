// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_transit_gateway_policy_table_entries_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'get_transit_gateway_policy_table_entries_request.g.dart';

abstract class GetTransitGatewayPolicyTableEntriesRequest
    with
        _i1.HttpInput<GetTransitGatewayPolicyTableEntriesRequest>,
        _i2.AWSEquatable<GetTransitGatewayPolicyTableEntriesRequest>
    implements
        Built<GetTransitGatewayPolicyTableEntriesRequest,
            GetTransitGatewayPolicyTableEntriesRequestBuilder> {
  factory GetTransitGatewayPolicyTableEntriesRequest({
    String? transitGatewayPolicyTableId,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$GetTransitGatewayPolicyTableEntriesRequest._(
      transitGatewayPolicyTableId: transitGatewayPolicyTableId,
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory GetTransitGatewayPolicyTableEntriesRequest.build(
      [void Function(GetTransitGatewayPolicyTableEntriesRequestBuilder)
          updates]) = _$GetTransitGatewayPolicyTableEntriesRequest;

  const GetTransitGatewayPolicyTableEntriesRequest._();

  factory GetTransitGatewayPolicyTableEntriesRequest.fromRequest(
    GetTransitGatewayPolicyTableEntriesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<GetTransitGatewayPolicyTableEntriesRequest>>
      serializers = [
    GetTransitGatewayPolicyTableEntriesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetTransitGatewayPolicyTableEntriesRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The ID of the transit gateway policy table.
  String? get transitGatewayPolicyTableId;

  /// The filters associated with the transit gateway policy table.
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetTransitGatewayPolicyTableEntriesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayPolicyTableId,
        filters,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetTransitGatewayPolicyTableEntriesRequest')
      ..add(
        'transitGatewayPolicyTableId',
        transitGatewayPolicyTableId,
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

class GetTransitGatewayPolicyTableEntriesRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<GetTransitGatewayPolicyTableEntriesRequest> {
  const GetTransitGatewayPolicyTableEntriesRequestEc2QuerySerializer()
      : super('GetTransitGatewayPolicyTableEntriesRequest');

  @override
  Iterable<Type> get types => const [
        GetTransitGatewayPolicyTableEntriesRequest,
        _$GetTransitGatewayPolicyTableEntriesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetTransitGatewayPolicyTableEntriesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTransitGatewayPolicyTableEntriesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayPolicyTableId':
          result.transitGatewayPolicyTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    GetTransitGatewayPolicyTableEntriesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetTransitGatewayPolicyTableEntriesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetTransitGatewayPolicyTableEntriesRequest(
      :transitGatewayPolicyTableId,
      :filters,
      :maxResults,
      :nextToken,
      :dryRun
    ) = object;
    if (transitGatewayPolicyTableId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayPolicyTableId'))
        ..add(serializers.serialize(
          transitGatewayPolicyTableId,
          specifiedType: const FullType(String),
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
