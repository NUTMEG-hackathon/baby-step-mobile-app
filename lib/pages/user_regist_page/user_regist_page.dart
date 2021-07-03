import 'dart:convert';
import 'package:baby_step_up_app/util/shared_preferences.dart';
import 'package:http/http.dart';

import 'package:baby_step_up_app/pages/user_regist_page/user_regist_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:baby_step_up_app/model/model.dart';
import 'package:baby_step_up_app/widgets/widgets.dart';

class UserRegistPage extends StatelessWidget {
  const UserRegistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('ユーザー登録'),
      ),
      body: SingleChildScrollView(
        child: _View(),
      ),
    );
  }
}

class _View extends ConsumerWidget {
  const _View();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(userRegistProvider.notifier);

    return Container(
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextFormField(
            enabled: true,
            maxLines: 1,
            decoration: const InputDecoration(
              icon: Icon(Icons.face),
              hintText: 'ユーザー名を入力してください',
              labelText: 'ユーザー名',
            ),
            onChanged: (v) {
              controller.setName(v);
            },
          ),
          TextFormField(
            enabled: true,
            maxLines: 1,
            decoration: const InputDecoration(
              icon: Icon(Icons.mail),
              hintText: 'メールアドレスを入力してください',
              labelText: 'メールアドレス',
            ),
            onChanged: (v) {
              controller.setEmail(v);
            },
          ),
          TextFormField(
            enabled: true,
            maxLines: 1,
            obscureText: true,
            decoration: const InputDecoration(
              icon: Icon(Icons.password),
              hintText: 'パスワードを入力してください',
              labelText: 'パスワード',
            ),
            onChanged: (v) {
              controller.setPassword(v);
            },
            onEditingComplete: () {
              controller.setName;
            },
          ),
          TextFormField(
            enabled: true,
            maxLines: 1,
            obscureText: true,
            decoration: const InputDecoration(
              icon: Icon(Icons.password),
              hintText: '同じパスワードを入力してください',
              labelText: 'パスワードの確認',
            ),
            validator: (v) {
              return v!.isEmpty ? '入力して下さい' : null;
            },
            onChanged: (v) {
              controller.setPasswordConfirm(v);
            },
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () async {
              try {
                final Map<String, String> _headers = {
                  'content-type': 'application/json'
                };

                final _client = Client();

                String body = json.encode({
                  'name': controller.state.name,
                  'email': controller.state.email,
                  'password': controller.state.password,
                  'password_confirmation': controller.state.passwordConfirm
                });

                print(body);
                final result = await _client.post(
                    Uri.parse(
                      'http://localhost:3000/api/auth',
                    ),
                    headers: _headers,
                    body: body);

                final res = (await json.decode(result.body));
                print(res);
                setPrefs(res['data']['id']);
              } catch (e) {
                throw (e);
                print('やりなおし');
              }
            },
            child: Text('登録'),
          ),
        ],
      ),
    );
  }
}
