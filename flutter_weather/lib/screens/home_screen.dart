import 'package:flutter/material.dart';
import 'package:flutter_wheather/widgets/weather_card.dart';

import '../utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.appName)),
      body: ListView(
        children: [
          WeatherCard(),
        ],
      ),
    );
  }
}
