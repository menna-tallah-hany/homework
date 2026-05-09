import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/screens/home_screen.dart';

void main() {
  runApp(const Weather_App(weatherData: null));
}

class Weather_App extends StatelessWidget {
  final WeatherModel? weatherData;
  const Weather_App({super.key, required this.weatherData});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: weatherData == null
            ? Colors.blue
            : weatherData!.getThemeColor(),
      ),
      home: HomeScreen(),
    );
  }
}
