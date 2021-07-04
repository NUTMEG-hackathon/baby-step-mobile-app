import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:baby_step_up_app/model/model.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:baby_step_up_app/util/shared_preferences.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List list = [];
  int index = 0;
  String title = 'baby step up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: Color(0xfffeecd2),
        middle: Text('ベイビーステップアップ'),
      ),
      body: GestureDetector(
        onTap: () async {
          var data = await onSwipeCallback();
          setState(() {
            list = data;
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            Center(
              child: Text(title),
            ),
            Align(
              alignment: Alignment(0.5, 0.8),
              child: SwipingButton(
                backgroundColor: Color(0xff91d0cd),
                iconColor: Color(0xfffeecd2),
                swipeButtonColor: Color(0xffe98a00),
                padding: EdgeInsets.symmetric(horizontal: 10),
                text: 'a',
                onSwipeCallback: () {
                  setState(() {
                    title = list[index]["title"];
                    index += 1;
                  });
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }

  onSwipeCallback() async {
    // APIを取得して描画しなおす
    // APIを取得しなおすことをcart_buttonを参考にやろう
    // stateで取得しなおすみたいなやつを作ればいい？

    print('aaa');

    final _client = Client();

    final Map<String, String> _headers = {'content-type': 'application/json'};
    final id = await getPrefs();

    final body = json.encode({"user_id": id, "template_id": 3});

    final res = await _client.get(Uri.parse(
        "http://localhost:3000/api/v1/templates/get_template_step_list/3"));
    final data = await json.decode(res.body);

    print(data["steps"].toList());

    return data["steps"].toList();
  }
}

class SwipeButton extends ConsumerWidget {
  const SwipeButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stepTitle = '';

    return SwipingButton(text: stepTitle, onSwipeCallback: onSwipeCallback);
  }

  void onSwipeCallback() {
    print('hahahaha;');
  }
}
