import 'package:flutter/material.dart';
import '../models/weather_model.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather;

  WeatherCard({required this.weather});

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
