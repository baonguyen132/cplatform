import 'dart:convert';

import 'package:http/http.dart'as http;

import '../model/weather_data.dart';
import 'api_key.dart';



class FetchWeatherAPI {
  late List<WeatherData> weatherDataList;

  // procecssing the data from response -> to json
  Future<List<WeatherData>> processData(lat, lon) async {
    var response = await http.get(Uri.parse(apiURL(lat, lon)));
    var jsonString = jsonDecode(response.body)["list"] as List;

    weatherDataList = (jsonString as List<dynamic>).map((e) => WeatherData(
        dt: e["dt"],
        main: Main(
            temp: e["main"]["temp"].toDouble(),
            feelsLike: e["main"]["feels_like"].toDouble(),
            tempMin: e["main"]["temp_min"].toDouble(),
            tempMax: e["main"]["temp_max"].toDouble(),
            pressure: e["main"]["pressure"],
            seaLevel: e["main"]["sea_level"],
            grndLevel: e["main"]["grnd_level"],
            humidity: e["main"]["humidity"],
            tempKf: e["main"]["temp_kf"].toDouble()
        ),
        weather: (e["weather"] as List<dynamic>).map((w) =>
            Weather(
                id: w["id"],
                main: w["main"],
                description: w["description"],
                icon: w["icon"]
            )
        ).toList(),
        clouds: Clouds(
            all: e["clouds"]["all"]
        ),
        wind: Wind(
            speed: e["wind"]["speed"].toDouble(),
            deg: e["wind"]["deg"],
            gust: e["wind"]["gust"].toDouble()
        ),
        visibility: e["visibility"],
        rain: e["rain"] != null ? Rain(threeHour: e["rain"]["3h"].toDouble()) : Rain(threeHour: 0.0),
        sys: Sys(
            pod: e["sys"]["pod"]
        ),
        dtTxt: e["dt_txt"]
    )).toList();


    return weatherDataList;
  }
}

String apiURL(var lat, var lon) {
  String url;
  url = "https://api.openweathermap.org/data/2.5/forecast?lat=${lat}&lon=${lon}&appid=${apiKey}&units=metric&exclude=minutely";
  return url;
}
