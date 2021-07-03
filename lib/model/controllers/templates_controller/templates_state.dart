import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baby_step_up_app/model/model.dart';

part 'templates_state.freezed.dart';

@freezed
class TemplatesState with _$TemplatesState {
  factory TemplatesState({
    @Default(<Template>[]) List<Template> list,
    @Default(true) bool isLoading,
  }) = _TemplatesState;

  TemplatesState._();

  late final Map<int, Template> _map = Map.fromEntries(
    list.map((s) => MapEntry(s.id, s)),
  );
}