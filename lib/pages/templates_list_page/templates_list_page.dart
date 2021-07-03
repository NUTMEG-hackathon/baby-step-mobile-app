import 'package:baby_step_up_app/pages/create_template_page/create_template_page.dart';
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
        backgroundColor: Color(0xfffeecd2),
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
        : Stack(
            children: [
              ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemCount: titles.length,
                itemBuilder: (_, index) => TemplateTile(
                  title: titles[index],
                ),
              ),
              Align(
                alignment: Alignment(0.8, 0.9),
                child: FloatingActionButton(
                  onPressed: () => Navigator.of(context).push<void>(
                      CupertinoPageRoute<void>(
                          builder: (context) => const CreateTemplatePage(),
                          fullscreenDialog: true)),
                  backgroundColor: Color(0xffe98a00),
                  child: Icon(Icons.add),
                ),
              ),
            ],
          );
  }
}
