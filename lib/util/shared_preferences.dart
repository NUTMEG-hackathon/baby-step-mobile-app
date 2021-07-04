import 'package:shared_preferences/shared_preferences.dart';

Future<void> setPrefs(id) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt('id', id);
}

Future getPrefs() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final id = prefs.getInt('id');
  return id;
}
