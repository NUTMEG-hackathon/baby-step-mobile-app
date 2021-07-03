import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_regist_state.freezed.dart';

@freezed
class UserRegistState with _$UserRegistState {
  factory UserRegistState({
    required String name,
    required String email,
    required String password,
    required String passwordConfirm,
  }) = _UserRegistState;

  UserRegistState._();
}
