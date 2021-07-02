import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:baby_step_up_app/model/model.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            Center(
              child: Text('メインページです'),
            ),
            Align(
              alignment: Alignment(0.5, 0.8),
              child: SwipingButton(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  text: 'a',
                  onSwipeCallback: onSwipeCallback,
                ),
              ),
          ]),
        ),
      ),
    );
  }

  void onSwipeCallback() {
    // APIを取得して描画しなおす
    // APIを取得しなおすことをcart_buttonを参考にやろう
    // stateで取得しなおすみたいなやつを作ればいい？
    print('hahahaha;');
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
