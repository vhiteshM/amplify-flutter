// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_object_versions_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListObjectVersionsRequest extends ListObjectVersionsRequest {
  @override
  final String bucket;
  @override
  final String? delimiter;
  @override
  final EncodingType? encodingType;
  @override
  final String? keyMarker;
  @override
  final int? maxKeys;
  @override
  final String? prefix;
  @override
  final String? versionIdMarker;
  @override
  final String? expectedBucketOwner;
  @override
  final RequestPayer? requestPayer;
  @override
  final _i3.BuiltList<OptionalObjectAttributes>? optionalObjectAttributes;

  factory _$ListObjectVersionsRequest(
          [void Function(ListObjectVersionsRequestBuilder)? updates]) =>
      (new ListObjectVersionsRequestBuilder()..update(updates))._build();

  _$ListObjectVersionsRequest._(
      {required this.bucket,
      this.delimiter,
      this.encodingType,
      this.keyMarker,
      this.maxKeys,
      this.prefix,
      this.versionIdMarker,
      this.expectedBucketOwner,
      this.requestPayer,
      this.optionalObjectAttributes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'ListObjectVersionsRequest', 'bucket');
  }

  @override
  ListObjectVersionsRequest rebuild(
          void Function(ListObjectVersionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectVersionsRequestBuilder toBuilder() =>
      new ListObjectVersionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListObjectVersionsRequest &&
        bucket == other.bucket &&
        delimiter == other.delimiter &&
        encodingType == other.encodingType &&
        keyMarker == other.keyMarker &&
        maxKeys == other.maxKeys &&
        prefix == other.prefix &&
        versionIdMarker == other.versionIdMarker &&
        expectedBucketOwner == other.expectedBucketOwner &&
        requestPayer == other.requestPayer &&
        optionalObjectAttributes == other.optionalObjectAttributes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, delimiter.hashCode);
    _$hash = $jc(_$hash, encodingType.hashCode);
    _$hash = $jc(_$hash, keyMarker.hashCode);
    _$hash = $jc(_$hash, maxKeys.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, versionIdMarker.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, optionalObjectAttributes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListObjectVersionsRequestBuilder
    implements
        Builder<ListObjectVersionsRequest, ListObjectVersionsRequestBuilder> {
  _$ListObjectVersionsRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _delimiter;
  String? get delimiter => _$this._delimiter;
  set delimiter(String? delimiter) => _$this._delimiter = delimiter;

  EncodingType? _encodingType;
  EncodingType? get encodingType => _$this._encodingType;
  set encodingType(EncodingType? encodingType) =>
      _$this._encodingType = encodingType;

  String? _keyMarker;
  String? get keyMarker => _$this._keyMarker;
  set keyMarker(String? keyMarker) => _$this._keyMarker = keyMarker;

  int? _maxKeys;
  int? get maxKeys => _$this._maxKeys;
  set maxKeys(int? maxKeys) => _$this._maxKeys = maxKeys;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _versionIdMarker;
  String? get versionIdMarker => _$this._versionIdMarker;
  set versionIdMarker(String? versionIdMarker) =>
      _$this._versionIdMarker = versionIdMarker;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  RequestPayer? _requestPayer;
  RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  _i3.ListBuilder<OptionalObjectAttributes>? _optionalObjectAttributes;
  _i3.ListBuilder<OptionalObjectAttributes> get optionalObjectAttributes =>
      _$this._optionalObjectAttributes ??=
          new _i3.ListBuilder<OptionalObjectAttributes>();
  set optionalObjectAttributes(
          _i3.ListBuilder<OptionalObjectAttributes>?
              optionalObjectAttributes) =>
      _$this._optionalObjectAttributes = optionalObjectAttributes;

  ListObjectVersionsRequestBuilder();

  ListObjectVersionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _delimiter = $v.delimiter;
      _encodingType = $v.encodingType;
      _keyMarker = $v.keyMarker;
      _maxKeys = $v.maxKeys;
      _prefix = $v.prefix;
      _versionIdMarker = $v.versionIdMarker;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _requestPayer = $v.requestPayer;
      _optionalObjectAttributes = $v.optionalObjectAttributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListObjectVersionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListObjectVersionsRequest;
  }

  @override
  void update(void Function(ListObjectVersionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListObjectVersionsRequest build() => _build();

  _$ListObjectVersionsRequest _build() {
    _$ListObjectVersionsRequest _$result;
    try {
      _$result = _$v ??
          new _$ListObjectVersionsRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'ListObjectVersionsRequest', 'bucket'),
              delimiter: delimiter,
              encodingType: encodingType,
              keyMarker: keyMarker,
              maxKeys: maxKeys,
              prefix: prefix,
              versionIdMarker: versionIdMarker,
              expectedBucketOwner: expectedBucketOwner,
              requestPayer: requestPayer,
              optionalObjectAttributes: _optionalObjectAttributes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'optionalObjectAttributes';
        _optionalObjectAttributes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListObjectVersionsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ListObjectVersionsRequestPayload
    extends ListObjectVersionsRequestPayload {
  factory _$ListObjectVersionsRequestPayload(
          [void Function(ListObjectVersionsRequestPayloadBuilder)? updates]) =>
      (new ListObjectVersionsRequestPayloadBuilder()..update(updates))._build();

  _$ListObjectVersionsRequestPayload._() : super._();

  @override
  ListObjectVersionsRequestPayload rebuild(
          void Function(ListObjectVersionsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectVersionsRequestPayloadBuilder toBuilder() =>
      new ListObjectVersionsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListObjectVersionsRequestPayload;
  }

  @override
  int get hashCode {
    return 836363791;
  }
}

class ListObjectVersionsRequestPayloadBuilder
    implements
        Builder<ListObjectVersionsRequestPayload,
            ListObjectVersionsRequestPayloadBuilder> {
  _$ListObjectVersionsRequestPayload? _$v;

  ListObjectVersionsRequestPayloadBuilder();

  @override
  void replace(ListObjectVersionsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListObjectVersionsRequestPayload;
  }

  @override
  void update(void Function(ListObjectVersionsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListObjectVersionsRequestPayload build() => _build();

  _$ListObjectVersionsRequestPayload _build() {
    final _$result = _$v ?? new _$ListObjectVersionsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
