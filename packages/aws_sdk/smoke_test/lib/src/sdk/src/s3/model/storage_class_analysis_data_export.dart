// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.storage_class_analysis_data_export; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_export_destination.dart';
import 'package:smoke_test/src/sdk/src/s3/model/storage_class_analysis_schema_version.dart';

part 'storage_class_analysis_data_export.g.dart';

/// Container for data related to the storage class analysis for an Amazon S3 bucket for export.
abstract class StorageClassAnalysisDataExport
    with
        _i1.AWSEquatable<StorageClassAnalysisDataExport>
    implements
        Built<StorageClassAnalysisDataExport,
            StorageClassAnalysisDataExportBuilder> {
  /// Container for data related to the storage class analysis for an Amazon S3 bucket for export.
  factory StorageClassAnalysisDataExport({
    required StorageClassAnalysisSchemaVersion outputSchemaVersion,
    required AnalyticsExportDestination destination,
  }) {
    return _$StorageClassAnalysisDataExport._(
      outputSchemaVersion: outputSchemaVersion,
      destination: destination,
    );
  }

  /// Container for data related to the storage class analysis for an Amazon S3 bucket for export.
  factory StorageClassAnalysisDataExport.build(
          [void Function(StorageClassAnalysisDataExportBuilder) updates]) =
      _$StorageClassAnalysisDataExport;

  const StorageClassAnalysisDataExport._();

  static const List<_i2.SmithySerializer<StorageClassAnalysisDataExport>>
      serializers = [StorageClassAnalysisDataExportRestXmlSerializer()];

  /// The version of the output schema to use when exporting data. Must be `V_1`.
  StorageClassAnalysisSchemaVersion get outputSchemaVersion;

  /// The place to store the data for an analysis.
  AnalyticsExportDestination get destination;
  @override
  List<Object?> get props => [
        outputSchemaVersion,
        destination,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StorageClassAnalysisDataExport')
      ..add(
        'outputSchemaVersion',
        outputSchemaVersion,
      )
      ..add(
        'destination',
        destination,
      );
    return helper.toString();
  }
}

class StorageClassAnalysisDataExportRestXmlSerializer
    extends _i2.StructuredSmithySerializer<StorageClassAnalysisDataExport> {
  const StorageClassAnalysisDataExportRestXmlSerializer()
      : super('StorageClassAnalysisDataExport');

  @override
  Iterable<Type> get types => const [
        StorageClassAnalysisDataExport,
        _$StorageClassAnalysisDataExport,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  StorageClassAnalysisDataExport deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageClassAnalysisDataExportBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Destination':
          result.destination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalyticsExportDestination),
          ) as AnalyticsExportDestination));
        case 'OutputSchemaVersion':
          result.outputSchemaVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(StorageClassAnalysisSchemaVersion),
          ) as StorageClassAnalysisSchemaVersion);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StorageClassAnalysisDataExport object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StorageClassAnalysisDataExport',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final StorageClassAnalysisDataExport(:destination, :outputSchemaVersion) =
        object;
    result$
      ..add(const _i2.XmlElementName('Destination'))
      ..add(serializers.serialize(
        destination,
        specifiedType: const FullType(AnalyticsExportDestination),
      ));
    result$
      ..add(const _i2.XmlElementName('OutputSchemaVersion'))
      ..add(serializers.serialize(
        outputSchemaVersion,
        specifiedType:
            const FullType.nullable(StorageClassAnalysisSchemaVersion),
      ));
    return result$;
  }
}
