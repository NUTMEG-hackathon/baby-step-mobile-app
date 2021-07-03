import 'package:freezed_annotation/freezed_annotation.dart';

part 'template_steps_state.freezed.dart';

@freezed
class TemplateStepsState with _$TemplateStepsState {
  factory TemplateStepsState({
    @Default(<String>[]) List<String> list,
  }) = _TemplateStepsState;

  TemplateStepsState._();

  late final int len = list.length;

  void addList(title) => list.add(title);
}
