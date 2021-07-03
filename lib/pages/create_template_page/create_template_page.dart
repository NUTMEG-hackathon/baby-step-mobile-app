import 'package:baby_step_up_app/pages/create_template_page/template_steps_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:baby_step_up_app/model/model.dart';
import 'package:baby_step_up_app/widgets/widgets.dart';

class CreateTemplatePage extends StatefulWidget {
  const CreateTemplatePage({Key? key}) : super(key: key);

  @override
  _CreateTemplatePageState createState() => new _CreateTemplatePageState();
}

class _CreateTemplatePageState extends State<CreateTemplatePage> {
  List<String> _steps = [];

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
              child: Text('テンプレート名'),
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
                setState(() {
                  _steps.add("text");
                });
              },
              backgroundColor: Color(0xffe98a00),
              child: Icon(Icons.add_box),
            ),
          ),
        ],
      ),
    );
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
