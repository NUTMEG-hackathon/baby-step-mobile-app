import 'package:baby_step_up_app/pages/user_regist_page/user_regist_controller.dart';
import 'package:baby_step_up_app/pages/user_regist_page/user_regist_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:baby_step_up_app/model/model.dart';
import 'package:baby_step_up_app/widgets/widgets.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:baby_step_up_app/util/shared_preferences.dart';

class TimePage extends StatelessWidget {
  const TimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: Color(0xfffeecd2),
        middle: const Text('時間設定'),
        leading: NavigationBarButton(
          text: 'time',
          onPressed: () => Navigator.of(context).push<void>(
              CupertinoPageRoute<void>(
                  builder: (context) => const UserRegistPage(),
                  fullscreenDialog: true)),
        ),
      ),
      body: Center(
        child: _View(),
      ),
    );
  }
}

class _View extends ConsumerWidget {
  const _View();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Map<String, String> _headers = {'content-type': 'application/json'};
    final _client = Client();

    return Container(
      padding: const EdgeInsets.all(50),
      child: GestureDetector(
        child: DateTimePicker(
          type: DateTimePickerType.time,
          initialTime: TimeOfDay(hour: 10, minute: 10),
          timeLabelText: "time",
          onChanged: (v) async {
            final id = await getPrefs();
            final body = json.encode({"user_id": id, "reset_time": v});

            final result = await _client.put(
                Uri.parse(
                    'http://localhost:3000/api/v1/users/update_reset_time'),
                headers: _headers,
                body: body);
          },
        ),
      ),
    );
  }

  GetTime() async {
    final Map<String, String> _headers = {'content-type': 'application/json'};
    final client = Client();
    final id = await getPrefs();
    final body = json.encode({"user_id": id});

    final result = await client.get(
      Uri.parse(
          "http://localhost:3000/api/v1/users/get_reset_time?user_id=" + id),
      headers: _headers,
    );

    final res = await json.decode(result.body);
    return res["reset_time"];
  }
}
