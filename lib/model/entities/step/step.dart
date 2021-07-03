import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'step.freezed.dart';

@freezed
class Step with _$Step {
  factory Step({
    required int id,
    required String title,
  }) = _Step;

  Step._();

  static Step fromJson(Map<String, dynamic> json) => Step(
        id: json['id'] as int,
        title: json['title'] as String,
      );
}
