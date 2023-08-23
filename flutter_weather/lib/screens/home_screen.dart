import 'package:flutter/material.dart';
import 'package:flutter_wheather/widgets/weather_card.dart';
import '../utils/constants.dart';
import '../models/weather_model.dart';
import 'forecast_screen.dart'; // 이곳에 WeatherModel import

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.appName)),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Weather weatherData = Weather(
                date: '2023-08-17',
                weatherDescription: 'Sunny',
                temperature: 25,
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ForecastScreen(
                    weatherData: weatherData,
                  ),
                ),
              );
            },
            child: WeatherCard(),
          ),
        ],
      ),
    );
  }
}
