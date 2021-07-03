// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_regist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserRegistStateTearOff {
  const _$UserRegistStateTearOff();

  _UserRegistState call(
      {required String name,
      required String email,
      required String password,
      required String passwordConfirm}) {
    return _UserRegistState(
      name: name,
      email: email,
      password: password,
      passwordConfirm: passwordConfirm,
    );
  }
}

/// @nodoc
const $UserRegistState = _$UserRegistStateTearOff();

/// @nodoc
mixin _$UserRegistState {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRegistStateCopyWith<UserRegistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegistStateCopyWith<$Res> {
  factory $UserRegistStateCopyWith(
          UserRegistState value, $Res Function(UserRegistState) then) =
      _$UserRegistStateCopyWithImpl<$Res>;
  $Res call(
      {String name, String email, String password, String passwordConfirm});
}

/// @nodoc
class _$UserRegistStateCopyWithImpl<$Res>
    implements $UserRegistStateCopyWith<$Res> {
  _$UserRegistStateCopyWithImpl(this._value, this._then);

  final UserRegistState _value;
  // ignore: unused_field
  final $Res Function(UserRegistState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordConfirm = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: passwordConfirm == freezed
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserRegistStateCopyWith<$Res>
    implements $UserRegistStateCopyWith<$Res> {
  factory _$UserRegistStateCopyWith(
          _UserRegistState value, $Res Function(_UserRegistState) then) =
      __$UserRegistStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, String email, String password, String passwordConfirm});
}

/// @nodoc
class __$UserRegistStateCopyWithImpl<$Res>
    extends _$UserRegistStateCopyWithImpl<$Res>
    implements _$UserRegistStateCopyWith<$Res> {
  __$UserRegistStateCopyWithImpl(
      _UserRegistState _value, $Res Function(_UserRegistState) _then)
      : super(_value, (v) => _then(v as _UserRegistState));

  @override
  _UserRegistState get _value => super._value as _UserRegistState;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordConfirm = freezed,
  }) {
    return _then(_UserRegistState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: passwordConfirm == freezed
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserRegistState extends _UserRegistState {
  _$_UserRegistState(
      {required this.name,
      required this.email,
      required this.password,
      required this.passwordConfirm})
      : super._();

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String passwordConfirm;

  @override
  String toString() {
    return 'UserRegistState(name: $name, email: $email, password: $password, passwordConfirm: $passwordConfirm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserRegistState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                const DeepCollectionEquality()
                    .equals(other.passwordConfirm, passwordConfirm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordConfirm);

  @JsonKey(ignore: true)
  @override
  _$UserRegistStateCopyWith<_UserRegistState> get copyWith =>
      __$UserRegistStateCopyWithImpl<_UserRegistState>(this, _$identity);
}

abstract class _UserRegistState extends UserRegistState {
  factory _UserRegistState(
      {required String name,
      required String email,
      required String password,
      required String passwordConfirm}) = _$_UserRegistState;
  _UserRegistState._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get passwordConfirm => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserRegistStateCopyWith<_UserRegistState> get copyWith =>
      throw _privateConstructorUsedError;
}
