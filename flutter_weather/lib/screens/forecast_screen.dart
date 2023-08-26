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
                'Date: ${weatherData.date}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Temperature: ${weatherData.temperature}°C',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Description: ${weatherData.weatherDescription}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement button functionality
                },
                child: Text('See Details'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
