import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baby_step_up_app/model/model.dart';

part 'steps_state.freezed.dart';

@freezed
class StepsState with _$StepsState {
  factory StepsState({
    @Default(<Step>[]) List<Step> steps,
    @Default(true) bool isLoading,
  }) = _StepsState;

  StepsState._();

  late final Map<int, Step> _map = Map.fromEntries(
    steps.map((s) => MapEntry(s.id, s)),
  );

  Step step(int id) => _map[id]!;
}
