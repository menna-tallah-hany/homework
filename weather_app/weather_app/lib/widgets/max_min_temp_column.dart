
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class MaxMinTempColumn extends StatelessWidget {
  const MaxMinTempColumn({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'maxTemp:${weatherModel.max}',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'minTemp:${weatherModel.min}',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
