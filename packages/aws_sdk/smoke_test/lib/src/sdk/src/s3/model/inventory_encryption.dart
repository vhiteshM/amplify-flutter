// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.inventory_encryption; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/ssekms.dart';
import 'package:smoke_test/src/sdk/src/s3/model/sses3.dart';

part 'inventory_encryption.g.dart';

/// Contains the type of server-side encryption used to encrypt the inventory results.
abstract class InventoryEncryption
    with _i1.AWSEquatable<InventoryEncryption>
    implements Built<InventoryEncryption, InventoryEncryptionBuilder> {
  /// Contains the type of server-side encryption used to encrypt the inventory results.
  factory InventoryEncryption({
    Sses3? sses3,
    Ssekms? ssekms,
  }) {
    return _$InventoryEncryption._(
      sses3: sses3,
      ssekms: ssekms,
    );
  }

  /// Contains the type of server-side encryption used to encrypt the inventory results.
  factory InventoryEncryption.build(
          [void Function(InventoryEncryptionBuilder) updates]) =
      _$InventoryEncryption;

  const InventoryEncryption._();

  static const List<_i2.SmithySerializer<InventoryEncryption>> serializers = [
    InventoryEncryptionRestXmlSerializer()
  ];

  /// Specifies the use of SSE-S3 to encrypt delivered inventory reports.
  Sses3? get sses3;

  /// Specifies the use of SSE-KMS to encrypt delivered inventory reports.
  Ssekms? get ssekms;
  @override
  List<Object?> get props => [
        sses3,
        ssekms,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InventoryEncryption')
      ..add(
        'sses3',
        sses3,
      )
      ..add(
        'ssekms',
        ssekms,
      );
    return helper.toString();
  }
}

class InventoryEncryptionRestXmlSerializer
    extends _i2.StructuredSmithySerializer<InventoryEncryption> {
  const InventoryEncryptionRestXmlSerializer() : super('InventoryEncryption');

  @override
  Iterable<Type> get types => const [
        InventoryEncryption,
        _$InventoryEncryption,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  InventoryEncryption deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InventoryEncryptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SSE-KMS':
          result.ssekms.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Ssekms),
          ) as Ssekms));
        case 'SSE-S3':
          result.sses3.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Sses3),
          ) as Sses3));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InventoryEncryption object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InventoryEncryption',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final InventoryEncryption(:ssekms, :sses3) = object;
    if (ssekms != null) {
      result$
        ..add(const _i2.XmlElementName('SSE-KMS'))
        ..add(serializers.serialize(
          ssekms,
          specifiedType: const FullType(Ssekms),
        ));
    }
    if (sses3 != null) {
      result$
        ..add(const _i2.XmlElementName('SSE-S3'))
        ..add(serializers.serialize(
          sses3,
          specifiedType: const FullType(Sses3),
        ));
    }
    return result$;
  }
}
