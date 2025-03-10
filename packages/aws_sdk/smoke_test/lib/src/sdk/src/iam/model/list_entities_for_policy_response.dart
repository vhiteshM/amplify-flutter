// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.list_entities_for_policy_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/policy_group.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_role.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_user.dart';

part 'list_entities_for_policy_response.g.dart';

/// Contains the response to a successful ListEntitiesForPolicy request.
abstract class ListEntitiesForPolicyResponse
    with
        _i1.AWSEquatable<ListEntitiesForPolicyResponse>
    implements
        Built<ListEntitiesForPolicyResponse,
            ListEntitiesForPolicyResponseBuilder> {
  /// Contains the response to a successful ListEntitiesForPolicy request.
  factory ListEntitiesForPolicyResponse({
    List<PolicyGroup>? policyGroups,
    List<PolicyUser>? policyUsers,
    List<PolicyRole>? policyRoles,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$ListEntitiesForPolicyResponse._(
      policyGroups: policyGroups == null ? null : _i2.BuiltList(policyGroups),
      policyUsers: policyUsers == null ? null : _i2.BuiltList(policyUsers),
      policyRoles: policyRoles == null ? null : _i2.BuiltList(policyRoles),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  /// Contains the response to a successful ListEntitiesForPolicy request.
  factory ListEntitiesForPolicyResponse.build(
          [void Function(ListEntitiesForPolicyResponseBuilder) updates]) =
      _$ListEntitiesForPolicyResponse;

  const ListEntitiesForPolicyResponse._();

  /// Constructs a [ListEntitiesForPolicyResponse] from a [payload] and [response].
  factory ListEntitiesForPolicyResponse.fromResponse(
    ListEntitiesForPolicyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListEntitiesForPolicyResponse>>
      serializers = [ListEntitiesForPolicyResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListEntitiesForPolicyResponseBuilder b) {
    b.isTruncated = false;
  }

  /// A list of IAM groups that the policy is attached to.
  _i2.BuiltList<PolicyGroup>? get policyGroups;

  /// A list of IAM users that the policy is attached to.
  _i2.BuiltList<PolicyUser>? get policyUsers;

  /// A list of IAM roles that the policy is attached to.
  _i2.BuiltList<PolicyRole>? get policyRoles;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        policyGroups,
        policyUsers,
        policyRoles,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListEntitiesForPolicyResponse')
      ..add(
        'policyGroups',
        policyGroups,
      )
      ..add(
        'policyUsers',
        policyUsers,
      )
      ..add(
        'policyRoles',
        policyRoles,
      )
      ..add(
        'isTruncated',
        isTruncated,
      )
      ..add(
        'marker',
        marker,
      );
    return helper.toString();
  }
}

class ListEntitiesForPolicyResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ListEntitiesForPolicyResponse> {
  const ListEntitiesForPolicyResponseAwsQuerySerializer()
      : super('ListEntitiesForPolicyResponse');

  @override
  Iterable<Type> get types => const [
        ListEntitiesForPolicyResponse,
        _$ListEntitiesForPolicyResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListEntitiesForPolicyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListEntitiesForPolicyResponseBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PolicyGroups':
          result.policyGroups.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PolicyGroup)],
            ),
          ) as _i2.BuiltList<PolicyGroup>));
        case 'PolicyUsers':
          result.policyUsers.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PolicyUser)],
            ),
          ) as _i2.BuiltList<PolicyUser>));
        case 'PolicyRoles':
          result.policyRoles.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PolicyRole)],
            ),
          ) as _i2.BuiltList<PolicyRole>));
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Marker':
          result.marker = (serializers.deserialize(
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
    ListEntitiesForPolicyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListEntitiesForPolicyResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListEntitiesForPolicyResponse(
      :policyGroups,
      :policyUsers,
      :policyRoles,
      :isTruncated,
      :marker
    ) = object;
    if (policyGroups != null) {
      result$
        ..add(const _i3.XmlElementName('PolicyGroups'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          policyGroups,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PolicyGroup)],
          ),
        ));
    }
    if (policyUsers != null) {
      result$
        ..add(const _i3.XmlElementName('PolicyUsers'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          policyUsers,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PolicyUser)],
          ),
        ));
    }
    if (policyRoles != null) {
      result$
        ..add(const _i3.XmlElementName('PolicyRoles'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          policyRoles,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PolicyRole)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('IsTruncated'))
      ..add(serializers.serialize(
        isTruncated,
        specifiedType: const FullType(bool),
      ));
    if (marker != null) {
      result$
        ..add(const _i3.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
