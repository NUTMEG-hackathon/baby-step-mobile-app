// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'templates_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TemplatesStateTearOff {
  const _$TemplatesStateTearOff();

  _TemplatesState call(
      {List<Template> list = const <Template>[], bool isLoading = true}) {
    return _TemplatesState(
      list: list,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $TemplatesState = _$TemplatesStateTearOff();

/// @nodoc
mixin _$TemplatesState {
  List<Template> get list => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TemplatesStateCopyWith<TemplatesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplatesStateCopyWith<$Res> {
  factory $TemplatesStateCopyWith(
          TemplatesState value, $Res Function(TemplatesState) then) =
      _$TemplatesStateCopyWithImpl<$Res>;
  $Res call({List<Template> list, bool isLoading});
}

/// @nodoc
class _$TemplatesStateCopyWithImpl<$Res>
    implements $TemplatesStateCopyWith<$Res> {
  _$TemplatesStateCopyWithImpl(this._value, this._then);

  final TemplatesState _value;
  // ignore: unused_field
  final $Res Function(TemplatesState) _then;

  @override
  $Res call({
    Object? list = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Template>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TemplatesStateCopyWith<$Res>
    implements $TemplatesStateCopyWith<$Res> {
  factory _$TemplatesStateCopyWith(
          _TemplatesState value, $Res Function(_TemplatesState) then) =
      __$TemplatesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Template> list, bool isLoading});
}

/// @nodoc
class __$TemplatesStateCopyWithImpl<$Res>
    extends _$TemplatesStateCopyWithImpl<$Res>
    implements _$TemplatesStateCopyWith<$Res> {
  __$TemplatesStateCopyWithImpl(
      _TemplatesState _value, $Res Function(_TemplatesState) _then)
      : super(_value, (v) => _then(v as _TemplatesState));

  @override
  _TemplatesState get _value => super._value as _TemplatesState;

  @override
  $Res call({
    Object? list = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_TemplatesState(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Template>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TemplatesState extends _TemplatesState {
  _$_TemplatesState({this.list = const <Template>[], this.isLoading = true})
      : super._();

  @JsonKey(defaultValue: const <Template>[])
  @override
  final List<Template> list;
  @JsonKey(defaultValue: true)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'TemplatesState(list: $list, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TemplatesState &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$TemplatesStateCopyWith<_TemplatesState> get copyWith =>
      __$TemplatesStateCopyWithImpl<_TemplatesState>(this, _$identity);
}

abstract class _TemplatesState extends TemplatesState {
  factory _TemplatesState({List<Template> list, bool isLoading}) =
      _$_TemplatesState;
  _TemplatesState._() : super._();

  @override
  List<Template> get list => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TemplatesStateCopyWith<_TemplatesState> get copyWith =>
      throw _privateConstructorUsedError;
}
