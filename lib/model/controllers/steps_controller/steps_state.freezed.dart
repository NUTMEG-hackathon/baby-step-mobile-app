// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'steps_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StepsStateTearOff {
  const _$StepsStateTearOff();

  _StepsState call({List<Step> steps = const <Step>[], bool isLoading = true}) {
    return _StepsState(
      steps: steps,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $StepsState = _$StepsStateTearOff();

/// @nodoc
mixin _$StepsState {
  List<Step> get steps => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StepsStateCopyWith<StepsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepsStateCopyWith<$Res> {
  factory $StepsStateCopyWith(
          StepsState value, $Res Function(StepsState) then) =
      _$StepsStateCopyWithImpl<$Res>;
  $Res call({List<Step> steps, bool isLoading});
}

/// @nodoc
class _$StepsStateCopyWithImpl<$Res> implements $StepsStateCopyWith<$Res> {
  _$StepsStateCopyWithImpl(this._value, this._then);

  final StepsState _value;
  // ignore: unused_field
  final $Res Function(StepsState) _then;

  @override
  $Res call({
    Object? steps = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      steps: steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$StepsStateCopyWith<$Res> implements $StepsStateCopyWith<$Res> {
  factory _$StepsStateCopyWith(
          _StepsState value, $Res Function(_StepsState) then) =
      __$StepsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Step> steps, bool isLoading});
}

/// @nodoc
class __$StepsStateCopyWithImpl<$Res> extends _$StepsStateCopyWithImpl<$Res>
    implements _$StepsStateCopyWith<$Res> {
  __$StepsStateCopyWithImpl(
      _StepsState _value, $Res Function(_StepsState) _then)
      : super(_value, (v) => _then(v as _StepsState));

  @override
  _StepsState get _value => super._value as _StepsState;

  @override
  $Res call({
    Object? steps = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_StepsState(
      steps: steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StepsState extends _StepsState {
  _$_StepsState({this.steps = const <Step>[], this.isLoading = true})
      : super._();

  @JsonKey(defaultValue: const <Step>[])
  @override
  final List<Step> steps;
  @JsonKey(defaultValue: true)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'StepsState(steps: $steps, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StepsState &&
            (identical(other.steps, steps) ||
                const DeepCollectionEquality().equals(other.steps, steps)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(steps) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$StepsStateCopyWith<_StepsState> get copyWith =>
      __$StepsStateCopyWithImpl<_StepsState>(this, _$identity);
}

abstract class _StepsState extends StepsState {
  factory _StepsState({List<Step> steps, bool isLoading}) = _$_StepsState;
  _StepsState._() : super._();

  @override
  List<Step> get steps => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StepsStateCopyWith<_StepsState> get copyWith =>
      throw _privateConstructorUsedError;
}
