import 'package:shared_preferences/shared_preferences.dart';

Future<void> setPrefs(id, uid) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt('id', id);
  prefs.setString('uid', uid);
}

Future getPrefs() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final id = prefs.getInt('id');
  final uid = prefs.getString('uid');
  return {"id": id, "uid": uid};
}
