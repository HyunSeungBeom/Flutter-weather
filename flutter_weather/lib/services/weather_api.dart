import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherApi {
  final String apiKey = 'c11ddfb2df27f2a833273820ddb26c6e';
  final String baseUrl = 'https://api.openweathermap.org/data/2.5/weather';

  Future<Map<String, dynamic>> getWeatherByCity(String city) async {
    final response = await http.get('$baseUrl?q=$city&appid=$apiKey' as Uri);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return jsonData;
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
