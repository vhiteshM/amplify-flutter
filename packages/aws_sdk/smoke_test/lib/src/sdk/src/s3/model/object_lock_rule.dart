// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.object_lock_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/default_retention.dart';

part 'object_lock_rule.g.dart';

/// The container element for an Object Lock rule.
abstract class ObjectLockRule
    with _i1.AWSEquatable<ObjectLockRule>
    implements Built<ObjectLockRule, ObjectLockRuleBuilder> {
  /// The container element for an Object Lock rule.
  factory ObjectLockRule({DefaultRetention? defaultRetention}) {
    return _$ObjectLockRule._(defaultRetention: defaultRetention);
  }

  /// The container element for an Object Lock rule.
  factory ObjectLockRule.build([void Function(ObjectLockRuleBuilder) updates]) =
      _$ObjectLockRule;

  const ObjectLockRule._();

  static const List<_i2.SmithySerializer<ObjectLockRule>> serializers = [
    ObjectLockRuleRestXmlSerializer()
  ];

  /// The default Object Lock retention mode and period that you want to apply to new objects placed in the specified bucket. Bucket settings require both a mode and a period. The period can be either `Days` or `Years` but you must select one. You cannot specify `Days` and `Years` at the same time.
  DefaultRetention? get defaultRetention;
  @override
  List<Object?> get props => [defaultRetention];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ObjectLockRule')
      ..add(
        'defaultRetention',
        defaultRetention,
      );
    return helper.toString();
  }
}

class ObjectLockRuleRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ObjectLockRule> {
  const ObjectLockRuleRestXmlSerializer() : super('ObjectLockRule');

  @override
  Iterable<Type> get types => const [
        ObjectLockRule,
        _$ObjectLockRule,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ObjectLockRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectLockRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DefaultRetention':
          result.defaultRetention.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultRetention),
          ) as DefaultRetention));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ObjectLockRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ObjectLockRule',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ObjectLockRule(:defaultRetention) = object;
    if (defaultRetention != null) {
      result$
        ..add(const _i2.XmlElementName('DefaultRetention'))
        ..add(serializers.serialize(
          defaultRetention,
          specifiedType: const FullType(DefaultRetention),
        ));
    }
    return result$;
  }
}
