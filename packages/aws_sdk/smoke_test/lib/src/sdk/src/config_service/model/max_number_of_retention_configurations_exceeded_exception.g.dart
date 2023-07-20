// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'max_number_of_retention_configurations_exceeded_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MaxNumberOfRetentionConfigurationsExceededException
    extends MaxNumberOfRetentionConfigurationsExceededException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$MaxNumberOfRetentionConfigurationsExceededException(
          [void Function(
                  MaxNumberOfRetentionConfigurationsExceededExceptionBuilder)?
              updates]) =>
      (new MaxNumberOfRetentionConfigurationsExceededExceptionBuilder()
            ..update(updates))
          ._build();

  _$MaxNumberOfRetentionConfigurationsExceededException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  MaxNumberOfRetentionConfigurationsExceededException rebuild(
          void Function(
                  MaxNumberOfRetentionConfigurationsExceededExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaxNumberOfRetentionConfigurationsExceededExceptionBuilder toBuilder() =>
      new MaxNumberOfRetentionConfigurationsExceededExceptionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaxNumberOfRetentionConfigurationsExceededException &&
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

class MaxNumberOfRetentionConfigurationsExceededExceptionBuilder
    implements
        Builder<MaxNumberOfRetentionConfigurationsExceededException,
            MaxNumberOfRetentionConfigurationsExceededExceptionBuilder> {
  _$MaxNumberOfRetentionConfigurationsExceededException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  MaxNumberOfRetentionConfigurationsExceededExceptionBuilder();

  MaxNumberOfRetentionConfigurationsExceededExceptionBuilder get _$this {
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
  void replace(MaxNumberOfRetentionConfigurationsExceededException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaxNumberOfRetentionConfigurationsExceededException;
  }

  @override
  void update(
      void Function(MaxNumberOfRetentionConfigurationsExceededExceptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MaxNumberOfRetentionConfigurationsExceededException build() => _build();

  _$MaxNumberOfRetentionConfigurationsExceededException _build() {
    final _$result = _$v ??
        new _$MaxNumberOfRetentionConfigurationsExceededException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
