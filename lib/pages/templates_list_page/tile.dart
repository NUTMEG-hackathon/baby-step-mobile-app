import 'package:baby_step_up_app/pages/read_template_page/read_template_page.dart';
import 'package:baby_step_up_app/util/logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:baby_step_up_app/model/model.dart';
import 'package:baby_step_up_app/widgets/widgets.dart';

class TemplateTile extends ConsumerWidget {
  TemplateTile({
    required this.title,
    required this.id,
  }) : super(key: ValueKey(title));

  final String title;
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.info('build');

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push<void>(CupertinoPageRoute<void>(
            builder: (context) => ReadTemplatePage(
                  id: id,
                  title: title,
                ),
            fullscreenDialog: true));
      },
      child: Column(
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
      ),
    );
  }
}
