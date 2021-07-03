import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:baby_step_up_app/providers/providers.dart';

//import 'pages/items_page/items_page.dart';
import 'widgets/bottom_navigation_bar.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
        navigatorKey: ref.watch(navigatorKeyProvider),
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xfffeecd2),
          accentColor: Color(0xff91d0cd),
          primaryColor: Color(0xffe98a00),
          bottomAppBarColor: Color(0xfffeecd2),
          buttonTheme: ButtonThemeData(buttonColor: Color(0xffe98a00)),
          dialogBackgroundColor: Color(0xffe98a00),
          hintColor: Color(0xffe98a00),
          iconTheme: IconThemeData(color: Color(0xffe98a00)),
          primaryIconTheme: IconThemeData(color: Color(0xffe98a00)),
          accentIconTheme: IconThemeData(color: Color(0xffe98a00)),
          tabBarTheme: TabBarTheme(labelColor: Color(0xffe98a00)),
        ),
        home: BottomTabBar());
  }
}
