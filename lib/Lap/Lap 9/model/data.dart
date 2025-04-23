import 'package:weatherapp/model/weather_data.dart';

class Data {
  final WeatherData? weatherData;


  Data([this.weatherData]);

  // function to fetch these values
   getWeatherData() => weatherData!;
}