class WeatherData {
  int dt;
  Main main;
  List<Weather> weather; // Changed from single Weather to List<Weather>
  Clouds clouds;
  Wind wind;
  int visibility;
  Rain rain;
  Sys sys;
  String dtTxt; // Updated from dt_txt to dtTxt for consistency with Dart naming conventions

  WeatherData({
    required this.dt,
    required this.main,
    required this.weather,
    required this.clouds,
    required this.wind,
    required this.visibility,
    required this.rain,
    required this.sys,
    required this.dtTxt, // Updated
  });

}

class Main {
  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  int pressure;
  int seaLevel;
  int grndLevel;
  int humidity;
  double tempKf;

  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.seaLevel,
    required this.grndLevel,
    required this.humidity,
    required this.tempKf,
  });

}

class Weather {
  int id;
  String main;
  String description;
  String icon;

  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

}

class Clouds {
  int all;

  Clouds({required this.all});

}

class Wind {
  double speed;
  int deg;
  double gust;

  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

}

class Rain {
  double threeHour;

  Rain({required this.threeHour});

}

class Sys {
  String pod;

  Sys({required this.pod});

}
