// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StepTearOff {
  const _$StepTearOff();

  _Step call({required int id, required String title}) {
    return _Step(
      id: id,
      title: title,
    );
  }
}

/// @nodoc
const $Step = _$StepTearOff();

/// @nodoc
mixin _$Step {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StepCopyWith<Step> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepCopyWith<$Res> {
  factory $StepCopyWith(Step value, $Res Function(Step) then) =
      _$StepCopyWithImpl<$Res>;
  $Res call({int id, String title});
}

/// @nodoc
class _$StepCopyWithImpl<$Res> implements $StepCopyWith<$Res> {
  _$StepCopyWithImpl(this._value, this._then);

  final Step _value;
  // ignore: unused_field
  final $Res Function(Step) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StepCopyWith<$Res> implements $StepCopyWith<$Res> {
  factory _$StepCopyWith(_Step value, $Res Function(_Step) then) =
      __$StepCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title});
}

/// @nodoc
class __$StepCopyWithImpl<$Res> extends _$StepCopyWithImpl<$Res>
    implements _$StepCopyWith<$Res> {
  __$StepCopyWithImpl(_Step _value, $Res Function(_Step) _then)
      : super(_value, (v) => _then(v as _Step));

  @override
  _Step get _value => super._value as _Step;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_Step(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Step extends _Step with DiagnosticableTreeMixin {
  _$_Step({required this.id, required this.title}) : super._();

  @override
  final int id;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Step(id: $id, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Step'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Step &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$StepCopyWith<_Step> get copyWith =>
      __$StepCopyWithImpl<_Step>(this, _$identity);
}

abstract class _Step extends Step {
  factory _Step({required int id, required String title}) = _$_Step;
  _Step._() : super._();

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StepCopyWith<_Step> get copyWith => throw _privateConstructorUsedError;
}
