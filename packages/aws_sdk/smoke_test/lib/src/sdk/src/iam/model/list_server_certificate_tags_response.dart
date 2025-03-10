// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.list_server_certificate_tags_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart';

part 'list_server_certificate_tags_response.g.dart';

abstract class ListServerCertificateTagsResponse
    with
        _i1.AWSEquatable<ListServerCertificateTagsResponse>
    implements
        Built<ListServerCertificateTagsResponse,
            ListServerCertificateTagsResponseBuilder> {
  factory ListServerCertificateTagsResponse({
    required List<Tag> tags,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$ListServerCertificateTagsResponse._(
      tags: _i2.BuiltList(tags),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  factory ListServerCertificateTagsResponse.build(
          [void Function(ListServerCertificateTagsResponseBuilder) updates]) =
      _$ListServerCertificateTagsResponse;

  const ListServerCertificateTagsResponse._();

  /// Constructs a [ListServerCertificateTagsResponse] from a [payload] and [response].
  factory ListServerCertificateTagsResponse.fromResponse(
    ListServerCertificateTagsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListServerCertificateTagsResponse>>
      serializers = [ListServerCertificateTagsResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListServerCertificateTagsResponseBuilder b) {
    b.isTruncated = false;
  }

  /// The list of tags that are currently attached to the IAM server certificate. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
  _i2.BuiltList<Tag> get tags;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        tags,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListServerCertificateTagsResponse')
          ..add(
            'tags',
            tags,
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

class ListServerCertificateTagsResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ListServerCertificateTagsResponse> {
  const ListServerCertificateTagsResponseAwsQuerySerializer()
      : super('ListServerCertificateTagsResponse');

  @override
  Iterable<Type> get types => const [
        ListServerCertificateTagsResponse,
        _$ListServerCertificateTagsResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListServerCertificateTagsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListServerCertificateTagsResponseBuilder();
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
        case 'Tags':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
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
    ListServerCertificateTagsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListServerCertificateTagsResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListServerCertificateTagsResponse(:tags, :isTruncated, :marker) =
        object;
    result$
      ..add(const _i3.XmlElementName('Tags'))
      ..add(
          const _i3.XmlBuiltListSerializer(indexer: _i3.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        tags,
        specifiedType: const FullType.nullable(
          _i2.BuiltList,
          [FullType(Tag)],
        ),
      ));
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
