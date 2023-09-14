import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myapp/core/api.dart';

class ModalApi {
  Future<WeatherApi> getWeather() async {
    Uri url = Uri.parse('http://api.weatherapi.com/v1/forecast.json?key=4c86cc5911e74b6abe9102831230203&q=samarqand&days=7');
    http.Response response = await http.get(url);
    return WeatherApi.fromJson(jsonDecode(response.body));
  }
}
