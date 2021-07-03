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
              print(v);
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
              controller.setEmail(v);
            },
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              print(controller.state.name);
              print(controller.state.email);
              print(controller.state.passwordConfirm);
            },
            child: Text('登録'),
          ),
        ],
      ),
    );
  }
}
