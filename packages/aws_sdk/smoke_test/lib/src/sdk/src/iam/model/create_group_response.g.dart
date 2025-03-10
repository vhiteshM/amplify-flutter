// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateGroupResponse extends CreateGroupResponse {
  @override
  final Group group;

  factory _$CreateGroupResponse(
          [void Function(CreateGroupResponseBuilder)? updates]) =>
      (new CreateGroupResponseBuilder()..update(updates))._build();

  _$CreateGroupResponse._({required this.group}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        group, r'CreateGroupResponse', 'group');
  }

  @override
  CreateGroupResponse rebuild(
          void Function(CreateGroupResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateGroupResponseBuilder toBuilder() =>
      new CreateGroupResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateGroupResponse && group == other.group;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateGroupResponseBuilder
    implements Builder<CreateGroupResponse, CreateGroupResponseBuilder> {
  _$CreateGroupResponse? _$v;

  GroupBuilder? _group;
  GroupBuilder get group => _$this._group ??= new GroupBuilder();
  set group(GroupBuilder? group) => _$this._group = group;

  CreateGroupResponseBuilder();

  CreateGroupResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _group = $v.group.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateGroupResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateGroupResponse;
  }

  @override
  void update(void Function(CreateGroupResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateGroupResponse build() => _build();

  _$CreateGroupResponse _build() {
    _$CreateGroupResponse _$result;
    try {
      _$result = _$v ?? new _$CreateGroupResponse._(group: group.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'group';
        group.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateGroupResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
