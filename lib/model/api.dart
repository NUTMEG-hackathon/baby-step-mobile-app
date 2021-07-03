import 'dart:convert';

import 'package:baby_step_up_app/pages/user_regist_page/user_regist_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

import 'model.dart';

final _client = Client();

final Map<String, String> _headers = {'content-type': 'application/json'};

final itemsFetcher = FutureProvider((ref) async {
  final result = await _client.get(
    Uri.parse('https://www.mocky.io/v2/5c2df3b92f00008e2f175350'),
  );
  final json =
      (await jsonDecode(result.body) as List).cast<Map<String, dynamic>>();
  final list = json.map(ItemStock.fromJson).toList();
  return list;
});

final templatesListFetcher = FutureProvider((ref) async {
  print('api');
  final result = await _client.get(
    Uri.parse('http://localhost:3000/templates'),
  );
  final json =
      (await jsonDecode(result.body) as List).cast<Map<String, dynamic>>();
  final list = json.map(Template.fromJson).toList();
  return list;
});

final userRegistFetcher = ((ref, body) async {
  print('api');
  print(body);

  final result = await _client.post(
      Uri.parse(
        'http://localhost:3000/api/auth',
      ),
      headers: _headers,
      body: body);

  final ex = (await jsonDecode(result.body)).cast<Map<String, dynamic>>();

  return result;
});

final postTime = (String time) async {
  final result;
};
