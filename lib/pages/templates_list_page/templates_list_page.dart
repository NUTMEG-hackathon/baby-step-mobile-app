import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:baby_step_up_app/model/model.dart';
import 'package:baby_step_up_app/widgets/widgets.dart';
import 'tile.dart';

class TemplatesListPage extends StatelessWidget {
  const TemplatesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('テンプレート一覧'),
      ),
      body: _TemplateListView(),
    );
  }
}

class _TemplateListView extends ConsumerWidget {
  const _TemplateListView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(templatesProvider.select((s) => s.isLoading));
    final titles = ref
        .watch(templatesProvider.select((s) => s.list.map((s) => s.title)))
        .toList();

    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: titles.length,
            itemBuilder: (_, index) => TemplateTile(
                  title: titles[index],
                ));
  }
}

