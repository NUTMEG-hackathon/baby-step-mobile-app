import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:baby_step_up_app/model/model.dart';

import 'templates_state.dart';

export 'templates_state.dart';

final templatesProvider =
    StateNotifierProvider<TemplatesController, TemplatesState>(
  (ref) => TemplatesController(ref.read),
);

class TemplatesController extends StateNotifier<TemplatesState> {
  TemplatesController(this._read) : super(TemplatesState()) {
    () async {
      state = state.copyWith(
        list: await _read(templatesListFetcher.future),
        isLoading: false,
      );
    }();
  }

  final Reader _read;
}
