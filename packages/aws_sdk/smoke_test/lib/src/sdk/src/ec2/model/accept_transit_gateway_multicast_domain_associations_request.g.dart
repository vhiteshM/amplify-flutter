// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_transit_gateway_multicast_domain_associations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptTransitGatewayMulticastDomainAssociationsRequest
    extends AcceptTransitGatewayMulticastDomainAssociationsRequest {
  @override
  final String? transitGatewayMulticastDomainId;
  @override
  final String? transitGatewayAttachmentId;
  @override
  final _i3.BuiltList<String>? subnetIds;
  @override
  final bool dryRun;

  factory _$AcceptTransitGatewayMulticastDomainAssociationsRequest(
          [void Function(
                  AcceptTransitGatewayMulticastDomainAssociationsRequestBuilder)?
              updates]) =>
      (new AcceptTransitGatewayMulticastDomainAssociationsRequestBuilder()
            ..update(updates))
          ._build();

  _$AcceptTransitGatewayMulticastDomainAssociationsRequest._(
      {this.transitGatewayMulticastDomainId,
      this.transitGatewayAttachmentId,
      this.subnetIds,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'AcceptTransitGatewayMulticastDomainAssociationsRequest', 'dryRun');
  }

  @override
  AcceptTransitGatewayMulticastDomainAssociationsRequest rebuild(
          void Function(
                  AcceptTransitGatewayMulticastDomainAssociationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptTransitGatewayMulticastDomainAssociationsRequestBuilder toBuilder() =>
      new AcceptTransitGatewayMulticastDomainAssociationsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptTransitGatewayMulticastDomainAssociationsRequest &&
        transitGatewayMulticastDomainId ==
            other.transitGatewayMulticastDomainId &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        subnetIds == other.subnetIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomainId.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, subnetIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AcceptTransitGatewayMulticastDomainAssociationsRequestBuilder
    implements
        Builder<AcceptTransitGatewayMulticastDomainAssociationsRequest,
            AcceptTransitGatewayMulticastDomainAssociationsRequestBuilder> {
  _$AcceptTransitGatewayMulticastDomainAssociationsRequest? _$v;

  String? _transitGatewayMulticastDomainId;
  String? get transitGatewayMulticastDomainId =>
      _$this._transitGatewayMulticastDomainId;
  set transitGatewayMulticastDomainId(
          String? transitGatewayMulticastDomainId) =>
      _$this._transitGatewayMulticastDomainId = transitGatewayMulticastDomainId;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  _i3.ListBuilder<String>? _subnetIds;
  _i3.ListBuilder<String> get subnetIds =>
      _$this._subnetIds ??= new _i3.ListBuilder<String>();
  set subnetIds(_i3.ListBuilder<String>? subnetIds) =>
      _$this._subnetIds = subnetIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AcceptTransitGatewayMulticastDomainAssociationsRequestBuilder() {
    AcceptTransitGatewayMulticastDomainAssociationsRequest._init(this);
  }

  AcceptTransitGatewayMulticastDomainAssociationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomainId = $v.transitGatewayMulticastDomainId;
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _subnetIds = $v.subnetIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceptTransitGatewayMulticastDomainAssociationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceptTransitGatewayMulticastDomainAssociationsRequest;
  }

  @override
  void update(
      void Function(
              AcceptTransitGatewayMulticastDomainAssociationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptTransitGatewayMulticastDomainAssociationsRequest build() => _build();

  _$AcceptTransitGatewayMulticastDomainAssociationsRequest _build() {
    _$AcceptTransitGatewayMulticastDomainAssociationsRequest _$result;
    try {
      _$result = _$v ??
          new _$AcceptTransitGatewayMulticastDomainAssociationsRequest._(
              transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
              transitGatewayAttachmentId: transitGatewayAttachmentId,
              subnetIds: _subnetIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'AcceptTransitGatewayMulticastDomainAssociationsRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subnetIds';
        _subnetIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AcceptTransitGatewayMulticastDomainAssociationsRequest',
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
