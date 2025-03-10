// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_bucket_metrics_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketMetricsConfigurationRequest
    extends PutBucketMetricsConfigurationRequest {
  @override
  final String bucket;
  @override
  final String id;
  @override
  final MetricsConfiguration metricsConfiguration;
  @override
  final String? expectedBucketOwner;

  factory _$PutBucketMetricsConfigurationRequest(
          [void Function(PutBucketMetricsConfigurationRequestBuilder)?
              updates]) =>
      (new PutBucketMetricsConfigurationRequestBuilder()..update(updates))
          ._build();

  _$PutBucketMetricsConfigurationRequest._(
      {required this.bucket,
      required this.id,
      required this.metricsConfiguration,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketMetricsConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'PutBucketMetricsConfigurationRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(metricsConfiguration,
        r'PutBucketMetricsConfigurationRequest', 'metricsConfiguration');
  }

  @override
  PutBucketMetricsConfigurationRequest rebuild(
          void Function(PutBucketMetricsConfigurationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketMetricsConfigurationRequestBuilder toBuilder() =>
      new PutBucketMetricsConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketMetricsConfigurationRequest &&
        bucket == other.bucket &&
        id == other.id &&
        metricsConfiguration == other.metricsConfiguration &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, metricsConfiguration.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketMetricsConfigurationRequestBuilder
    implements
        Builder<PutBucketMetricsConfigurationRequest,
            PutBucketMetricsConfigurationRequestBuilder> {
  _$PutBucketMetricsConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  MetricsConfigurationBuilder? _metricsConfiguration;
  MetricsConfigurationBuilder get metricsConfiguration =>
      _$this._metricsConfiguration ??= new MetricsConfigurationBuilder();
  set metricsConfiguration(MetricsConfigurationBuilder? metricsConfiguration) =>
      _$this._metricsConfiguration = metricsConfiguration;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutBucketMetricsConfigurationRequestBuilder();

  PutBucketMetricsConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _id = $v.id;
      _metricsConfiguration = $v.metricsConfiguration.toBuilder();
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketMetricsConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketMetricsConfigurationRequest;
  }

  @override
  void update(
      void Function(PutBucketMetricsConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketMetricsConfigurationRequest build() => _build();

  _$PutBucketMetricsConfigurationRequest _build() {
    _$PutBucketMetricsConfigurationRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketMetricsConfigurationRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketMetricsConfigurationRequest', 'bucket'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'PutBucketMetricsConfigurationRequest', 'id'),
              metricsConfiguration: metricsConfiguration.build(),
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metricsConfiguration';
        metricsConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketMetricsConfigurationRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
