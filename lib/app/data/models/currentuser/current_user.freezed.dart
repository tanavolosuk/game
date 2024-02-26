// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentUser _$CurrentUserFromJson(Map<String, dynamic> json) {
  return _CurrentUser.fromJson(json);
}

/// @nodoc
mixin _$CurrentUser {
  String get id_session => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentUserCopyWith<CurrentUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserCopyWith<$Res> {
  factory $CurrentUserCopyWith(
          CurrentUser value, $Res Function(CurrentUser) then) =
      _$CurrentUserCopyWithImpl<$Res, CurrentUser>;
  @useResult
  $Res call({String id_session, String username});
}

/// @nodoc
class _$CurrentUserCopyWithImpl<$Res, $Val extends CurrentUser>
    implements $CurrentUserCopyWith<$Res> {
  _$CurrentUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_session = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      id_session: null == id_session
          ? _value.id_session
          : id_session // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentUserImplCopyWith<$Res>
    implements $CurrentUserCopyWith<$Res> {
  factory _$$CurrentUserImplCopyWith(
          _$CurrentUserImpl value, $Res Function(_$CurrentUserImpl) then) =
      __$$CurrentUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id_session, String username});
}

/// @nodoc
class __$$CurrentUserImplCopyWithImpl<$Res>
    extends _$CurrentUserCopyWithImpl<$Res, _$CurrentUserImpl>
    implements _$$CurrentUserImplCopyWith<$Res> {
  __$$CurrentUserImplCopyWithImpl(
      _$CurrentUserImpl _value, $Res Function(_$CurrentUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_session = null,
    Object? username = null,
  }) {
    return _then(_$CurrentUserImpl(
      id_session: null == id_session
          ? _value.id_session
          : id_session // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentUserImpl implements _CurrentUser {
  _$CurrentUserImpl({required this.id_session, required this.username});

  factory _$CurrentUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentUserImplFromJson(json);

  @override
  final String id_session;
  @override
  final String username;

  @override
  String toString() {
    return 'CurrentUser(id_session: $id_session, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUserImpl &&
            (identical(other.id_session, id_session) ||
                other.id_session == id_session) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id_session, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUserImplCopyWith<_$CurrentUserImpl> get copyWith =>
      __$$CurrentUserImplCopyWithImpl<_$CurrentUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentUserImplToJson(
      this,
    );
  }
}

abstract class _CurrentUser implements CurrentUser {
  factory _CurrentUser(
      {required final String id_session,
      required final String username}) = _$CurrentUserImpl;

  factory _CurrentUser.fromJson(Map<String, dynamic> json) =
      _$CurrentUserImpl.fromJson;

  @override
  String get id_session;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$CurrentUserImplCopyWith<_$CurrentUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
