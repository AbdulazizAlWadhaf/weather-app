import 'package:flutter/material.dart';

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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
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