import 'package:flutter/material.dart';

import '../models/weather_model.dart';

class ForecastScreen extends StatelessWidget {
  final Weather weatherData;

  const ForecastScreen({Key? key, required this.weatherData}) : super(key: key);

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
            Text(
              'Date: ${weatherData.date}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              'Temperature: ${weatherData.temperature}°C',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              'Description: ${weatherData.weatherDescription}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement button functionality
              },
              child: const Text('See Details'),
            ),
          ],
        ),
      ),
    );
  }
}
