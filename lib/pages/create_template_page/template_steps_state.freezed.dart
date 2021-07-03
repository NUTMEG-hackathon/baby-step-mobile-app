// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'template_steps_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TemplateStepsStateTearOff {
  const _$TemplateStepsStateTearOff();

  _TemplateStepsState call({List<String> list = const <String>[]}) {
    return _TemplateStepsState(
      list: list,
    );
  }
}

/// @nodoc
const $TemplateStepsState = _$TemplateStepsStateTearOff();

/// @nodoc
mixin _$TemplateStepsState {
  List<String> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TemplateStepsStateCopyWith<TemplateStepsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateStepsStateCopyWith<$Res> {
  factory $TemplateStepsStateCopyWith(
          TemplateStepsState value, $Res Function(TemplateStepsState) then) =
      _$TemplateStepsStateCopyWithImpl<$Res>;
  $Res call({List<String> list});
}

/// @nodoc
class _$TemplateStepsStateCopyWithImpl<$Res>
    implements $TemplateStepsStateCopyWith<$Res> {
  _$TemplateStepsStateCopyWithImpl(this._value, this._then);

  final TemplateStepsState _value;
  // ignore: unused_field
  final $Res Function(TemplateStepsState) _then;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$TemplateStepsStateCopyWith<$Res>
    implements $TemplateStepsStateCopyWith<$Res> {
  factory _$TemplateStepsStateCopyWith(
          _TemplateStepsState value, $Res Function(_TemplateStepsState) then) =
      __$TemplateStepsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<String> list});
}

/// @nodoc
class __$TemplateStepsStateCopyWithImpl<$Res>
    extends _$TemplateStepsStateCopyWithImpl<$Res>
    implements _$TemplateStepsStateCopyWith<$Res> {
  __$TemplateStepsStateCopyWithImpl(
      _TemplateStepsState _value, $Res Function(_TemplateStepsState) _then)
      : super(_value, (v) => _then(v as _TemplateStepsState));

  @override
  _TemplateStepsState get _value => super._value as _TemplateStepsState;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_TemplateStepsState(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_TemplateStepsState extends _TemplateStepsState {
  _$_TemplateStepsState({this.list = const <String>[]}) : super._();

  @JsonKey(defaultValue: const <String>[])
  @override
  final List<String> list;

  @override
  String toString() {
    return 'TemplateStepsState(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TemplateStepsState &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$TemplateStepsStateCopyWith<_TemplateStepsState> get copyWith =>
      __$TemplateStepsStateCopyWithImpl<_TemplateStepsState>(this, _$identity);
}

abstract class _TemplateStepsState extends TemplateStepsState {
  factory _TemplateStepsState({List<String> list}) = _$_TemplateStepsState;
  _TemplateStepsState._() : super._();

  @override
  List<String> get list => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TemplateStepsStateCopyWith<_TemplateStepsState> get copyWith =>
      throw _privateConstructorUsedError;
}
