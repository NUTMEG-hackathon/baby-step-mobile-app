import 'package:shared_preferences/shared_preferences.dart';

void setPrefs(id) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt('id', id);
}

Future getPrefs() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getInt('id');
}
