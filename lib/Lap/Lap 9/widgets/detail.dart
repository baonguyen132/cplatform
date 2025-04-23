import 'package:flutter/material.dart';
import 'package:weatherapp/model/weather_data.dart';
import 'package:weatherapp/util/color_custome.dart';

import '../model/constants.dart';

class Detail extends StatefulWidget {
  WeatherData weatherData ;
  Detail({super.key , required this.weatherData});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: const Text(
            "DETAIL",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
            color: CustomColors.cardColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 8),
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.weatherData.weather[0].main,
                          style: const TextStyle(
                              fontSize: 12,
                              color: CustomColors.firstGradientColor,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          widget.weatherData.weather[0].description,
                          style: Constants().textStyle ,
                        )
                      ],
                    ),
                    Image.asset(
                      "assets/weather/${widget.weatherData.weather[0].icon}.png",
                      width: 60,
                      height: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "temp: ${widget.weatherData.main.temp}",
                          style: Constants().textStyle ,
                        ),
                        Text(
                          "temp_min: ${widget.weatherData.main.tempMin}",
                          style: Constants().textStyle ,
                        ),
                        Text(
                          "temp_max: ${widget.weatherData.main.tempMax}",
                          style: Constants().textStyle ,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 8),
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Wind",
                      style: TextStyle(
                          fontSize: 12,
                          color: CustomColors.firstGradientColor,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Image.asset(
                      "assets/icons/windspeed.png",
                      width: 60,
                      height: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "speed: ${widget.weatherData.wind.speed}",
                          style: Constants().textStyle ,
                        ),
                        Text(
                          "deg: ${widget.weatherData.wind.deg}",
                          style: Constants().textStyle ,
                        ),
                        Text(
                          "gust: ${widget.weatherData.wind.gust}",
                          style: Constants().textStyle ,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 8),
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Humidity",
                      style: TextStyle(
                          fontSize: 12,
                          color: CustomColors.firstGradientColor,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Image.asset(
                      "assets/icons/humidity.png",
                      width: 60,
                      height: 60,
                    ),
                    Text(
                      "humidity: ${widget.weatherData.main.humidity}",
                      style: Constants().textStyle ,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 8),
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Clouds",
                      style: TextStyle(
                          fontSize: 12,
                          color: CustomColors.firstGradientColor,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Image.asset(
                      "assets/icons/clouds.png",
                      width: 60,
                      height: 60,
                    ),
                    Text(
                      "clound: ${widget.weatherData.clouds.all}",
                      style: Constants().textStyle ,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
