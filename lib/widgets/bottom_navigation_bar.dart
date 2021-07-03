import 'package:baby_step_up_app/pages/templates_list_page/templates_list_page.dart';
import 'package:baby_step_up_app/pages/user_regist_page/user_regist_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:baby_step_up_app/pages/items_page/items_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:baby_step_up_app/providers/providers.dart';
import 'package:baby_step_up_app/pages/main_page/main_page.dart';

// _viewsで表示させる画面を対応させる
class BottomTabBar extends ConsumerWidget {
  final _views = [UserRegistPage(), MainPage(), TemplatesListPage()];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabType = ref.watch(tabTypeProvider.notifier);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search)),
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.list))
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
