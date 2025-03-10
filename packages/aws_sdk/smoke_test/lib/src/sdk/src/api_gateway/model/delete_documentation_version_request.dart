// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.delete_documentation_version_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_documentation_version_request.g.dart';

/// Deletes an existing documentation version of an API.
abstract class DeleteDocumentationVersionRequest
    with
        _i1.HttpInput<DeleteDocumentationVersionRequestPayload>,
        _i2.AWSEquatable<DeleteDocumentationVersionRequest>
    implements
        Built<DeleteDocumentationVersionRequest,
            DeleteDocumentationVersionRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteDocumentationVersionRequestPayload> {
  /// Deletes an existing documentation version of an API.
  factory DeleteDocumentationVersionRequest({
    required String restApiId,
    required String documentationVersion,
  }) {
    return _$DeleteDocumentationVersionRequest._(
      restApiId: restApiId,
      documentationVersion: documentationVersion,
    );
  }

  /// Deletes an existing documentation version of an API.
  factory DeleteDocumentationVersionRequest.build(
          [void Function(DeleteDocumentationVersionRequestBuilder) updates]) =
      _$DeleteDocumentationVersionRequest;

  const DeleteDocumentationVersionRequest._();

  factory DeleteDocumentationVersionRequest.fromRequest(
    DeleteDocumentationVersionRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteDocumentationVersionRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['documentationVersion'] != null) {
          b.documentationVersion = labels['documentationVersion']!;
        }
      });

  static const List<
          _i1.SmithySerializer<DeleteDocumentationVersionRequestPayload>>
      serializers = [DeleteDocumentationVersionRequestRestJson1Serializer()];

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The version identifier of a to-be-deleted documentation snapshot.
  String get documentationVersion;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'documentationVersion':
        return documentationVersion;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteDocumentationVersionRequestPayload getPayload() =>
      DeleteDocumentationVersionRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        documentationVersion,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteDocumentationVersionRequest')
          ..add(
            'restApiId',
            restApiId,
          )
          ..add(
            'documentationVersion',
            documentationVersion,
          );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteDocumentationVersionRequestPayload
    with
        _i2.AWSEquatable<DeleteDocumentationVersionRequestPayload>
    implements
        Built<DeleteDocumentationVersionRequestPayload,
            DeleteDocumentationVersionRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteDocumentationVersionRequestPayload(
      [void Function(DeleteDocumentationVersionRequestPayloadBuilder)
          updates]) = _$DeleteDocumentationVersionRequestPayload;

  const DeleteDocumentationVersionRequestPayload._();

  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteDocumentationVersionRequestPayload');
    return helper.toString();
  }
}

class DeleteDocumentationVersionRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<DeleteDocumentationVersionRequestPayload> {
  const DeleteDocumentationVersionRequestRestJson1Serializer()
      : super('DeleteDocumentationVersionRequest');

  @override
  Iterable<Type> get types => const [
        DeleteDocumentationVersionRequest,
        _$DeleteDocumentationVersionRequest,
        DeleteDocumentationVersionRequestPayload,
        _$DeleteDocumentationVersionRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteDocumentationVersionRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteDocumentationVersionRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteDocumentationVersionRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
