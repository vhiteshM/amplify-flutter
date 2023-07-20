// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'no_such_organization_config_rule_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchOrganizationConfigRuleException
    extends NoSuchOrganizationConfigRuleException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NoSuchOrganizationConfigRuleException(
          [void Function(NoSuchOrganizationConfigRuleExceptionBuilder)?
              updates]) =>
      (new NoSuchOrganizationConfigRuleExceptionBuilder()..update(updates))
          ._build();

  _$NoSuchOrganizationConfigRuleException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  NoSuchOrganizationConfigRuleException rebuild(
          void Function(NoSuchOrganizationConfigRuleExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchOrganizationConfigRuleExceptionBuilder toBuilder() =>
      new NoSuchOrganizationConfigRuleExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchOrganizationConfigRuleException &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NoSuchOrganizationConfigRuleExceptionBuilder
    implements
        Builder<NoSuchOrganizationConfigRuleException,
            NoSuchOrganizationConfigRuleExceptionBuilder> {
  _$NoSuchOrganizationConfigRuleException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoSuchOrganizationConfigRuleExceptionBuilder();

  NoSuchOrganizationConfigRuleExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoSuchOrganizationConfigRuleException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoSuchOrganizationConfigRuleException;
  }

  @override
  void update(
      void Function(NoSuchOrganizationConfigRuleExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoSuchOrganizationConfigRuleException build() => _build();

  _$NoSuchOrganizationConfigRuleException _build() {
    final _$result = _$v ??
        new _$NoSuchOrganizationConfigRuleException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
