// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.imds_support_values; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ImdsSupportValues extends _i1.SmithyEnum<ImdsSupportValues> {
  const ImdsSupportValues._(
    super.index,
    super.name,
    super.value,
  );

  const ImdsSupportValues._sdkUnknown(super.value) : super.sdkUnknown();

  static const v20 = ImdsSupportValues._(
    0,
    'v2_0',
    'v2.0',
  );

  /// All values of [ImdsSupportValues].
  static const values = <ImdsSupportValues>[ImdsSupportValues.v20];

  static const List<_i1.SmithySerializer<ImdsSupportValues>> serializers = [
    _i1.SmithyEnumSerializer(
      'ImdsSupportValues',
      values: values,
      sdkUnknown: ImdsSupportValues._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ImdsSupportValuesHelpers on List<ImdsSupportValues> {
  /// Returns the value of [ImdsSupportValues] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ImdsSupportValues byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ImdsSupportValues] whose value matches [value].
  ImdsSupportValues byValue(String value) =>
      firstWhere((el) => el.value == value);
}
