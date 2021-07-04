import 'package:baby_step_up_app/pages/templates_list_page/tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:baby_step_up_app/model/model.dart';
import 'package:baby_step_up_app/widgets/widgets.dart';
import 'package:baby_step_up_app/pages/create_template_page/create_template_page.dart';
import 'package:baby_step_up_app/util/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:baby_step_up_app/model/model.dart';
import 'package:baby_step_up_app/widgets/widgets.dart';
import 'package:http/http.dart';
import 'dart:convert';

class ReadTemplatePage extends StatefulWidget {
  final int id;
  final String title;

  const ReadTemplatePage({Key? key, required this.id, required this.title})
      : super(key: key);

  @override
  _ReadTemplatePageState createState() => new _ReadTemplatePageState();
}

class _ReadTemplatePageState extends State<ReadTemplatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: Color(0xfffeecd2),
        middle: Text(widget.title),
      ),
      body: FutureBuilder(
        future: getStep(),
        builder: (ctx, snapshot) {
          print('snapshot');
          print(snapshot.data);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          if (snapshot.error != null) {
            return Text('error');
          }

          return Stack(
            children: [
              ListView.builder(itemBuilder: (_, index) => _Tile(title: 'a')),
              Align(
                alignment: Alignment(0.8, 0.9),
                child: FloatingActionButton(
                  onPressed: () async {
                    await postFavorite();
                  },
                  backgroundColor: Color(0xffe98a00),
                  child: Icon(Icons.favorite),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Future<void> getStep() async {
    final _client = Client();

    final Map<String, String> _headers = {'content-type': 'application/json'};
    final id = await getPrefs();

    final res = await _client.get(Uri.parse(
        "http://localhost:3000/api/v1/templates/get_template_step_list/${widget.id}"));
    final data = await json.decode(res.body);
    return data["steps"];
  }

  postFavorite() async {
    final _client = Client();

    final Map<String, String> _headers = {'content-type': 'application/json'};
    final id = await getPrefs();

    final body = json.encode({"user_id": id, "template_id": widget.id});

    final res = await _client.put(
      Uri.parse("http://localhost:3000/api/v1/users/update_select_template"),
      headers: _headers,
      body: body,
    );

    print(res);

    final data = await json.decode(res.body);
    return data["id"];
  }
}

class _Tile extends ConsumerWidget {
  _Tile({
    required this.title,
  }) : super(key: ValueKey(title));

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
