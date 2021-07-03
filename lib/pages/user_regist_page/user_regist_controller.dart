import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:baby_step_up_app/model/model.dart';

import 'user_regist_state.dart';

export 'user_regist_state.dart';

final userRegistProvider = StateNotifierProvider(
  (ref) => UserRegistController(),
);

class UserRegistController extends StateNotifier<UserRegistState> {
  UserRegistController()
      : super(UserRegistState(
          name: '',
          email: '',
          password: '',
          passwordConfirm: '',
        ));

  void setName(name) {
    state = state.copyWith(name: name);
    print('name');
    print(name);
  }

  void setEmail(email) => state = state.copyWith(email: email);

  void setPassword(password) => state = state.copyWith(password: password);

  void setPasswordConfirm(passwordConfirm) =>
      state = state.copyWith(email: passwordConfirm);

  @override
  void dispose() {
    UserRegistController();
    super.dispose();
  }
}
