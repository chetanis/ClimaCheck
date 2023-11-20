import 'dart:convert';
import 'package:clima_check/model/current_weather.dart';
import 'package:dio/dio.dart';

import '../constants.dart' as constants;

class WeatherController {
  final Dio dio = Dio();
  late CurrentWeather currentWeather;

  WeatherController() {
    initializeWeather();
  }

  Future<void> initializeWeather() async {
    try {
      final response = await dio.get(constants.apiUrl);
      if (response.statusCode == 200) {
        Map<String, dynamic> weather = json.decode(response.toString());
        currentWeather = CurrentWeather.fromJson(weather);
      } else {
        throw Exception('Failed to get weather data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to get weather data: $e');
    }
  }

  // double getTemp() {
  //   return currentWeather.mainWeather!.temp!;
  // }
}
