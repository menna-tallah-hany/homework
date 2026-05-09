import 'package:flutter/material.dart';

class WeatherModel {
  final String cityName;
  final DateTime date;
  final double max;
  final double min;
  final String icon;
  final String text;
  final double temp;
  WeatherModel({
    required this.cityName,
    required this.date,
    required this.max,
    required this.min,
    required this.icon,
    required this.text,
    required this.temp,
  });

  MaterialColor getThemeColor() {
    if (text == 'Sunny' || text == 'Clear') {
      return Colors.orange;
    } else if (text.contains('Cloudy') ||
        text.contains('cloudy') ||
        text.contains('Overcast')) {
      return Colors.blueGrey;
    } else if (text.contains('Rain') ||
        text.contains('rain') ||
        text.contains('Drizzle')) {
      return Colors.blue;
    } else {
      return Colors.orange;
    }
  }

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      icon: json["current"]["condition"]['icon'],
      text: json["current"]["condition"]["text"],
      max: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      min: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      date: DateTime.parse(json["current"]["last_updated"]),
      temp: json["current"]['temp_c'],
    );
  }
}
