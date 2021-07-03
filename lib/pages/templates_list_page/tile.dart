import 'package:baby_step_up_app/util/logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:baby_step_up_app/model/model.dart';
import 'package:baby_step_up_app/widgets/widgets.dart';

class TemplateTile extends ConsumerWidget {
  TemplateTile({
    required this.title,
  }) : super(key: ValueKey(title));

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.info('build');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 96,
          child: Row(
            children: [Text(title)],
          ),
        ),
        const Divider(indent: 10)
      ],
    );
  }
}
