import 'package:flutter/material.dart';

import '../models/weather_model.dart';

class ForecastScreen extends StatelessWidget {
  final Weather weatherData;

  const ForecastScreen({Key? key, required this.weatherData}) : super(key: key);

  String _getBackgroundImage() {
    // Determine background image based on weather description
    if (weatherData.weatherDescription.contains('rain')) {
      return 'assets/rainy.jpg';
    } else if (weatherData.weatherDescription.contains('cloud')) {
      return 'assets/cloudy.jpg';
    } else if (weatherData.weatherDescription.contains('clear')) {
      return 'assets/sunny.jpg';
    } else {
      return 'assets/default.jpg';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Forecast'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_getBackgroundImage()),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Date: ${DateTime.now()}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
