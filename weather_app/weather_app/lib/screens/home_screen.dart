import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/app_bar_content.dart';
import 'package:weather_app/widgets/custom_text.dart';
import 'package:weather_app/widgets/weather_body.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        backgroundColor: weatherData == null
            ? const Color(0xff229CEE)
            : weatherData!.getThemeColor(),
        title: AppBarContent(
          color: weatherData == null
              ? const Color(0xff229CEE)
              : weatherData!.getThemeColor(),
          onWeatherFetched: (weather) {
            setState(() {
              weatherData = weather;
            });
          },
        ),
      ),
      body: weatherData == null
          ? InitialVeiw()
          : WeatherBody(weatherModel: weatherData!),
    );
  }
}
