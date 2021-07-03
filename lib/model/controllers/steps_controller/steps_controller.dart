import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:baby_step_up_app/model/model.dart';

import 'steps_state.dart';

export 'steps_state.dart';

final stepsProvider = StateNotifierProvider<StepsController, StepsState>(
  (ref) => StepsController(ref.read),
);

class StepsController extends StateNotifier<StepsState> {
  StepsController(this._read) : super(StepsState()) {
    () async {
      state = state.copyWith(
        steps: await _read(stepsListFetcher.future),
        isLoading: false,
      );
    }();
  }

  final Reader _read;
}
