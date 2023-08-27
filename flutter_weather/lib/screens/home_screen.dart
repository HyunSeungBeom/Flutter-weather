import 'package:flutter/material.dart';
import 'package:flutter_wheather/widgets/weather_card.dart';
import '../utils/constants.dart';
import '../models/weather_model.dart';
import 'forecast_screen.dart';
import '../services/weather_api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final WeatherApi weatherApi = WeatherApi();

  Weather? weatherData;

  @override
  void initState() {
    super.initState();
    _fetchWeatherData();
  }

  Future<void> _fetchWeatherData() async {
    try {
      final apiData =
          await weatherApi.getWeatherByCity('YOUR_CITY_NAME'); // 수정 필요
      setState(() {
        final mainData = apiData['main'];
        var weatherData = apiData['weather'][0];

        weatherData = Weather(
          temperature: mainData['temp'].toDouble(),
          weatherDescription: weatherData['description'],
        );
      });
    } catch (e) {
      print("Error fetching weather data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.appName)),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              if (weatherData != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForecastScreen(
                      weatherData: weatherData!,
                    ),
                  ),
                );
              }
            },
            child: WeatherCard(),
          ),
        ],
      ),
    );
  }
}
