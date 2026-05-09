import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/weather_info_row.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key, required this.weatherModel});

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weatherModel.cityName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),

        Text(
          'updated at: ${weatherModel.date.hour}:${weatherModel.date.minute.toString().padLeft(2, '0')}',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.all(20),
          child: WeatherInfoRow(weatherModel: weatherModel),
        ),
        const SizedBox(height: 32),
        Text(
          weatherModel.text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ],
    );
  }
}
