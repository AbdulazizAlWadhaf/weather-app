import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  Dio dio = Dio();
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final apiKey = '9a4fa4686d0b4b2fa4721200251106';
  Future<WeatherModel?> getCurrentWeather({required String cityName}) async{
    try {
  Response response = await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
  WeatherModel weatherModel = WeatherModel.fromJson(response.data);
  return weatherModel;
} catch (e) {
  return null;
}
  }
}