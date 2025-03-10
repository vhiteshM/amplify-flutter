// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_rest_api_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRestApiRequest extends GetRestApiRequest {
  @override
  final String restApiId;

  factory _$GetRestApiRequest(
          [void Function(GetRestApiRequestBuilder)? updates]) =>
      (new GetRestApiRequestBuilder()..update(updates))._build();

  _$GetRestApiRequest._({required this.restApiId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetRestApiRequest', 'restApiId');
  }

  @override
  GetRestApiRequest rebuild(void Function(GetRestApiRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRestApiRequestBuilder toBuilder() =>
      new GetRestApiRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRestApiRequest && restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetRestApiRequestBuilder
    implements Builder<GetRestApiRequest, GetRestApiRequestBuilder> {
  _$GetRestApiRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetRestApiRequestBuilder();

  GetRestApiRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRestApiRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRestApiRequest;
  }

  @override
  void update(void Function(GetRestApiRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRestApiRequest build() => _build();

  _$GetRestApiRequest _build() {
    final _$result = _$v ??
        new _$GetRestApiRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetRestApiRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetRestApiRequestPayload extends GetRestApiRequestPayload {
  factory _$GetRestApiRequestPayload(
          [void Function(GetRestApiRequestPayloadBuilder)? updates]) =>
      (new GetRestApiRequestPayloadBuilder()..update(updates))._build();

  _$GetRestApiRequestPayload._() : super._();

  @override
  GetRestApiRequestPayload rebuild(
          void Function(GetRestApiRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRestApiRequestPayloadBuilder toBuilder() =>
      new GetRestApiRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRestApiRequestPayload;
  }

  @override
  int get hashCode {
    return 896940614;
  }
}

class GetRestApiRequestPayloadBuilder
    implements
        Builder<GetRestApiRequestPayload, GetRestApiRequestPayloadBuilder> {
  _$GetRestApiRequestPayload? _$v;

  GetRestApiRequestPayloadBuilder();

  @override
  void replace(GetRestApiRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRestApiRequestPayload;
  }

  @override
  void update(void Function(GetRestApiRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRestApiRequestPayload build() => _build();

  _$GetRestApiRequestPayload _build() {
    final _$result = _$v ?? new _$GetRestApiRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
