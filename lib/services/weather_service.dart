import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  Dio dio = Dio();
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final apiKey = '9a4fa4686d0b4b2fa4721200251106';
  Future<WeatherModel> getCurrentWeather({required String cityName}) async{
    try {
  Response response = await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
  WeatherModel weatherModel = WeatherModel.fromJson(response.data);
  return weatherModel;
  } on DioException catch(e){
    final String errorMessage = e.response?.data['error']['message'] ?? 'oops there was an error, try later';
    throw Exception(errorMessage);
  } catch(e){
    log(e.toString());
    throw Exception('oops there was an error, try later');
  }
    
  }

} 
  