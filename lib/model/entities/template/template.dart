import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'template.freezed.dart';

@freezed
class Template with _$Template {
  factory Template({
    required int id,
    required String title,
  }) = _Template;

  Template._();

  static Template fromJson(Map<String, dynamic> json) => Template(
        id: json['id'] as int,
        title: json['title'] as String,
      );
}
