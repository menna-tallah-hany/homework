import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) async {
        WeatherService weatherService = WeatherService(Dio());
        WeatherModel? weatherModel = await weatherService.getData(
          cityName: value,
        );
        Navigator.pop(context,weatherModel);
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 32,
          horizontal: 24,
        ),
        labelText: 'search',
        suffixIcon: const Icon(Icons.search),
        hintText: 'Enter City Name ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xffFFAB3F)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xffFFAB3F)),
        ),
      ),
    );
  }
}
