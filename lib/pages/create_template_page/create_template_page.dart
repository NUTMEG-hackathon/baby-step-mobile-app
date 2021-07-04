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

class CreateTemplatePage extends StatefulWidget {
  final dynamic id;
  final String title;

  const CreateTemplatePage({Key? key, required this.id, required this.title})
      : super(key: key);

  @override
  _CreateTemplatePageState createState() => new _CreateTemplatePageState();
}

class _CreateTemplatePageState extends State<CreateTemplatePage> {
  List<String> _steps = [];
  String title = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: Color(0xfffeecd2),
        middle: Text('テンプレート作成'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(widget.title),
            ),
          ),
          Expanded(
            flex: 5,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: _steps.length,
              itemBuilder: (_, index) => _Tile(
                title: _steps[index],
              ),
            ),
          ),
          Expanded(
            child: FloatingActionButton(
              onPressed: () {
                openDialog(context);
              },
              backgroundColor: Color(0xffe98a00),
              child: Icon(Icons.add_box),
            ),
          ),
        ],
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('ステップ名'),
            content: TextField(
              keyboardType: TextInputType.text,
              onChanged: (v) {
                setState(() {
                  title = v;
                });
              },
            ),
            actions: [
              ElevatedButton(
                  onPressed: () async {
                    final _client = Client();

                    final Map<String, String> _headers = {
                      'content-type': 'application/json'
                    };

                    final id = await postStep(title);
                    setState(() {
                      _steps.add(title);
                    });
                  },
                  child: Text('決定'))
            ],
          );
        });
  }

  postStep(v) async {
    final _client = Client();

    final Map<String, String> _headers = {'content-type': 'application/json'};
    final id = await getPrefs();

    final body =
        json.encode({"user_id": id, "template_id": widget.id, "title": v});

    final res = await _client.post(Uri.parse("http://localhost:3000/steps"),
        headers: _headers, body: body);

    final data = await json.decode(res.body);
    return data["id"];
  }
}

class _Tile extends StatelessWidget {
  const _Tile({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(title),
    );
  }
}
