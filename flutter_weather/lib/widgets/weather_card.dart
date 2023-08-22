import 'package:flutter/material.dart';
import '../models/weather_model.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather = Weather(
    date: '2023-08-17',
    temperature: 25,
    weatherDescription: 'Sunny',
  );

  WeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: const Icon(Icons.cloud),
        title: Text('Date: ${weather.date}'),
        subtitle: Text('Temperature: ${weather.temperature}°C'),
      ),
    );
  }
}
