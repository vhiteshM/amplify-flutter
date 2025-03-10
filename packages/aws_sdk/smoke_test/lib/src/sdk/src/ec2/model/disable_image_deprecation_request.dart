// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_image_deprecation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disable_image_deprecation_request.g.dart';

abstract class DisableImageDeprecationRequest
    with
        _i1.HttpInput<DisableImageDeprecationRequest>,
        _i2.AWSEquatable<DisableImageDeprecationRequest>
    implements
        Built<DisableImageDeprecationRequest,
            DisableImageDeprecationRequestBuilder> {
  factory DisableImageDeprecationRequest({
    String? imageId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DisableImageDeprecationRequest._(
      imageId: imageId,
      dryRun: dryRun,
    );
  }

  factory DisableImageDeprecationRequest.build(
          [void Function(DisableImageDeprecationRequestBuilder) updates]) =
      _$DisableImageDeprecationRequest;

  const DisableImageDeprecationRequest._();

  factory DisableImageDeprecationRequest.fromRequest(
    DisableImageDeprecationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DisableImageDeprecationRequest>>
      serializers = [DisableImageDeprecationRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableImageDeprecationRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the AMI.
  String? get imageId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisableImageDeprecationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        imageId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DisableImageDeprecationRequest')
      ..add(
        'imageId',
        imageId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DisableImageDeprecationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DisableImageDeprecationRequest> {
  const DisableImageDeprecationRequestEc2QuerySerializer()
      : super('DisableImageDeprecationRequest');

  @override
  Iterable<Type> get types => const [
        DisableImageDeprecationRequest,
        _$DisableImageDeprecationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableImageDeprecationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableImageDeprecationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ImageId':
          result.imageId = (serializers.deserialize(
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
    DisableImageDeprecationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisableImageDeprecationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableImageDeprecationRequest(:imageId, :dryRun) = object;
    if (imageId != null) {
      result$
        ..add(const _i1.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
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
