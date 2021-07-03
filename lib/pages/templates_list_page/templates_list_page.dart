import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:baby_step_up_app/model/model.dart';
import 'package:baby_step_up_app/widgets/widgets.dart';


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
    final isLoading = false;
    
    return isLoading ? const Center(child: CircularProgressIndicator()) : ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: 7,
      itemBuilder: (_, index) => _Tile(id: index,)
    );
  }
}

class _Tile extends ConsumerWidget {
  _Tile({
    required this.id,
  }) : super(key: ValueKey(id));

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 96,
        child: Row(
          children: [
            Text('papipu')
          ],
        ),
      ),
      const Divider(indent: 10)
    ],
    );
  }
}