import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/max_min_temp_column.dart';

class WeatherInfoRow extends StatelessWidget {
  const WeatherInfoRow({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.network('https:${weatherModel.icon}', height: 100, width: 100),
        Text(
          '${weatherModel.temp.toInt()}',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        MaxMinTempColumn(weatherModel: weatherModel),
      ],
    );
  }
}
