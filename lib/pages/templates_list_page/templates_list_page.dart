import 'package:baby_step_up_app/pages/create_template_page/create_template_page.dart';
import 'package:baby_step_up_app/util/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:baby_step_up_app/model/model.dart';
import 'package:baby_step_up_app/widgets/widgets.dart';
import 'tile.dart';
import 'package:http/http.dart';
import 'dart:convert';

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
  final title = 'test';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(templatesProvider.select((s) => s.isLoading));
    final titles = ref
        .watch(templatesProvider.select((s) => s.list.map((s) => s.title)))
        .toList();
    final ids = ref
        .watch(templatesProvider.select((s) => s.list.map((s) => s.id)))
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
                  id: ids[index],
                ),
              ),
              Align(
                alignment: Alignment(0.8, 0.9),
                child: FloatingActionButton(
                  onPressed: () => openDialog(context),
                  backgroundColor: Color(0xffe98a00),
                  child: Icon(Icons.add),
                ),
              ),
            ],
          );
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('テンプレート名'),
            content: TextField(
              keyboardType: TextInputType.text,
              onChanged: (v) {
                //title = v;
              },
            ),
            actions: [
              ElevatedButton(
                  onPressed: () async {
                    final _client = Client();

                    final Map<String, String> _headers = {
                      'content-type': 'application/json'
                    };

                    final id = await postTemplate(title);

                    Navigator.of(context).push<void>(CupertinoPageRoute<void>(
                        builder: (context) => CreateTemplatePage(
                              id: id,
                              title: title,
                            ),
                        fullscreenDialog: true));
                  },
                  child: Text('決定'))
            ],
          );
        });
  }

  postTemplate(v) async {
    final _client = Client();

    final Map<String, String> _headers = {'content-type': 'application/json'};
    final id = await getPrefs();
    final v = "test";
    print(id);

    final body = json.encode({"user_id": id, "title": title});

    final res = await _client.post(
      Uri.parse("http://localhost:3000/templates"),
      headers: _headers,
      body: body,
    );

    print(res);

    final data = await json.decode(res.body);
    return data["id"];
  }
}
