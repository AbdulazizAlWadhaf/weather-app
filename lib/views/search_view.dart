import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/views/home_view.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search a City',
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              WeatherModel weatherModel = await WeatherService(Dio()).getCurrentWeather(cityName: value);
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return HomeView();
              }));     
            },
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              hintText: 'Enter a city name',
              labelText: 'Search',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}