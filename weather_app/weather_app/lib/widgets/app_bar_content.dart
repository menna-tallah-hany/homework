import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/screens/search_screen.dart';

class AppBarContent extends StatelessWidget {
  final Color color;
  final Function(WeatherModel) onWeatherFetched;
  const AppBarContent({super.key, required this.color, required this.onWeatherFetched});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Weather',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        IconButton(
          onPressed: () async {
            WeatherModel? result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const SearchScreen();
                },
              ),
            );
            if (result != null) {
             onWeatherFetched(result);
            }
          },
          icon: Icon(Icons.search, color: Colors.white),
        ),
      ],
    );
  }
}
