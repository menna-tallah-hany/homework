import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/weather_details.dart';

class WeatherBody extends StatelessWidget {
  final WeatherModel weatherModel;
  const WeatherBody({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            weatherModel.getThemeColor(),
            weatherModel.getThemeColor()[50]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: WeatherDetails(weatherModel: weatherModel),
      ),
    );
  }
}
