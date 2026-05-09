import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  WeatherService(this.dio);
  Future<WeatherModel> getData({required String cityName}) async {
    try {
      Response response = await dio.get(
        'https://api.weatherapi.com/v1/forecast.json?key=e73d3ae7d61744a1aed154555260305&q=$cityName&aqi=no&days=1',
      );
      print(response);
      Map<String, dynamic> jsonData = response.data;
      WeatherModel weatherModel = WeatherModel.fromJson(jsonData);
      return weatherModel;
    } catch (e) {
      print(e.toString());
      throw Exception('Oops! there was an error, try again');
    }
  }
}
