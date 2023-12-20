import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:myapp/data/model/model.dart';

class ApiDate {
  Future<Model> getData() async {
    String url = 'https://randomuser.me/api/';
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    Map<String, dynamic> data = jsonDecode(response.body);
    Model model = Model.fromJson(data);
    return model;
  }
}
