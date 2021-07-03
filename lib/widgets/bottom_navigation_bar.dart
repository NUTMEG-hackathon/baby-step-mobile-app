import 'package:baby_step_up_app/pages/templates_list_page/templates_list_page.dart';
import 'package:baby_step_up_app/pages/user_regist_page/user_regist_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:baby_step_up_app/pages/items_page/items_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:baby_step_up_app/providers/providers.dart';
import 'package:baby_step_up_app/pages/main_page/main_page.dart';
import 'package:baby_step_up_app/pages/time_page/time_page.dart';

// _viewsで表示させる画面を対応させる
class BottomTabBar extends ConsumerWidget {
  final _views = [TimePage(), MainPage(), TemplatesListPage()];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabType = ref.watch(tabTypeProvider.notifier);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Color(0xfffeecd2),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
            Icons.search,
            color: Color(0xffe98a00),
          )),
          BottomNavigationBarItem(
              icon: Icon(
            Icons.home,
            color: Color(0xffe98a00),
          )),
          BottomNavigationBarItem(
              icon: Icon(
            Icons.list,
            color: Color(0xffe98a00),
          ))
        ],
        onTap: (int index) {
          tabType.state = TabType.values[index];
        },
        currentIndex: tabType.state.index,
      ),
      tabBuilder: (context, index) {
        return _views[index];
      },
    );
  }
}
