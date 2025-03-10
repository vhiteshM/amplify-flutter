// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.restore_object_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart';

part 'restore_object_output.g.dart';

abstract class RestoreObjectOutput
    with _i1.AWSEquatable<RestoreObjectOutput>
    implements
        Built<RestoreObjectOutput, RestoreObjectOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<RestoreObjectOutputPayload> {
  factory RestoreObjectOutput({
    RequestCharged? requestCharged,
    String? restoreOutputPath,
  }) {
    return _$RestoreObjectOutput._(
      requestCharged: requestCharged,
      restoreOutputPath: restoreOutputPath,
    );
  }

  factory RestoreObjectOutput.build(
          [void Function(RestoreObjectOutputBuilder) updates]) =
      _$RestoreObjectOutput;

  const RestoreObjectOutput._();

  /// Constructs a [RestoreObjectOutput] from a [payload] and [response].
  factory RestoreObjectOutput.fromResponse(
    RestoreObjectOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      RestoreObjectOutput.build((b) {
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
        if (response.headers['x-amz-restore-output-path'] != null) {
          b.restoreOutputPath = response.headers['x-amz-restore-output-path']!;
        }
      });

  static const List<_i2.SmithySerializer<RestoreObjectOutputPayload>>
      serializers = [RestoreObjectOutputRestXmlSerializer()];

  /// If present, indicates that the requester was successfully charged for the request.
  RequestCharged? get requestCharged;

  /// Indicates the path in the provided S3 output location where Select results will be restored to.
  String? get restoreOutputPath;
  @override
  RestoreObjectOutputPayload getPayload() => RestoreObjectOutputPayload();
  @override
  List<Object?> get props => [
        requestCharged,
        restoreOutputPath,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreObjectOutput')
      ..add(
        'requestCharged',
        requestCharged,
      )
      ..add(
        'restoreOutputPath',
        restoreOutputPath,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class RestoreObjectOutputPayload
    with _i1.AWSEquatable<RestoreObjectOutputPayload>
    implements
        Built<RestoreObjectOutputPayload, RestoreObjectOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory RestoreObjectOutputPayload(
          [void Function(RestoreObjectOutputPayloadBuilder) updates]) =
      _$RestoreObjectOutputPayload;

  const RestoreObjectOutputPayload._();

  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreObjectOutputPayload');
    return helper.toString();
  }
}

class RestoreObjectOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<RestoreObjectOutputPayload> {
  const RestoreObjectOutputRestXmlSerializer() : super('RestoreObjectOutput');

  @override
  Iterable<Type> get types => const [
        RestoreObjectOutput,
        _$RestoreObjectOutput,
        RestoreObjectOutputPayload,
        _$RestoreObjectOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  RestoreObjectOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return RestoreObjectOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RestoreObjectOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RestoreObjectOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
