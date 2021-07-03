import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:baby_step_up_app/model/model.dart';

import 'template_steps_state.dart';

export 'template_steps_state.dart';

class TemplateStepsController extends StateNotifier<TemplateStepsState> {
  TemplateStepsController(
    this._read,
  ) : super(TemplateStepsState());

  final Reader _read;

  void addTitle(title) => state = state.copyWith(list: title);
}
