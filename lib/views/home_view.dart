import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Weather App',
        style: TextStyle(
          color: Colors.white
        ),),
        actions: [
          IconButton(
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const SearchView();
              }));
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 24,
            ),
          ),
        ],
      ),
      body: const WeatherInfoBody(),
    );
  }
}
