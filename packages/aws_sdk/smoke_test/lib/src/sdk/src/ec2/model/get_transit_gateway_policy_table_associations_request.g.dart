// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transit_gateway_policy_table_associations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTransitGatewayPolicyTableAssociationsRequest
    extends GetTransitGatewayPolicyTableAssociationsRequest {
  @override
  final String? transitGatewayPolicyTableId;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$GetTransitGatewayPolicyTableAssociationsRequest(
          [void Function(
                  GetTransitGatewayPolicyTableAssociationsRequestBuilder)?
              updates]) =>
      (new GetTransitGatewayPolicyTableAssociationsRequestBuilder()
            ..update(updates))
          ._build();

  _$GetTransitGatewayPolicyTableAssociationsRequest._(
      {this.transitGatewayPolicyTableId,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'GetTransitGatewayPolicyTableAssociationsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetTransitGatewayPolicyTableAssociationsRequest', 'dryRun');
  }

  @override
  GetTransitGatewayPolicyTableAssociationsRequest rebuild(
          void Function(GetTransitGatewayPolicyTableAssociationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTransitGatewayPolicyTableAssociationsRequestBuilder toBuilder() =>
      new GetTransitGatewayPolicyTableAssociationsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTransitGatewayPolicyTableAssociationsRequest &&
        transitGatewayPolicyTableId == other.transitGatewayPolicyTableId &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPolicyTableId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTransitGatewayPolicyTableAssociationsRequestBuilder
    implements
        Builder<GetTransitGatewayPolicyTableAssociationsRequest,
            GetTransitGatewayPolicyTableAssociationsRequestBuilder> {
  _$GetTransitGatewayPolicyTableAssociationsRequest? _$v;

  String? _transitGatewayPolicyTableId;
  String? get transitGatewayPolicyTableId =>
      _$this._transitGatewayPolicyTableId;
  set transitGatewayPolicyTableId(String? transitGatewayPolicyTableId) =>
      _$this._transitGatewayPolicyTableId = transitGatewayPolicyTableId;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetTransitGatewayPolicyTableAssociationsRequestBuilder() {
    GetTransitGatewayPolicyTableAssociationsRequest._init(this);
  }

  GetTransitGatewayPolicyTableAssociationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPolicyTableId = $v.transitGatewayPolicyTableId;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTransitGatewayPolicyTableAssociationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTransitGatewayPolicyTableAssociationsRequest;
  }

  @override
  void update(
      void Function(GetTransitGatewayPolicyTableAssociationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTransitGatewayPolicyTableAssociationsRequest build() => _build();

  _$GetTransitGatewayPolicyTableAssociationsRequest _build() {
    _$GetTransitGatewayPolicyTableAssociationsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetTransitGatewayPolicyTableAssociationsRequest._(
              transitGatewayPolicyTableId: transitGatewayPolicyTableId,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'GetTransitGatewayPolicyTableAssociationsRequest',
                  'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'GetTransitGatewayPolicyTableAssociationsRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTransitGatewayPolicyTableAssociationsRequest',
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
