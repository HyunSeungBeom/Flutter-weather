import 'package:flutter/material.dart';

import '../models/weather_model.dart';

class ForecastScreen extends StatelessWidget {
  final Weather weatherData;

  const ForecastScreen({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Forecast'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Date: ${weatherData.date}'),
            Text('Temperature: ${weatherData.temperature}°C'),
            Text('Description: ${weatherData.weatherDescription}'),
          ],
        ),
      ),
    );
  }
}
