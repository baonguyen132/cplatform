import 'package:flutter/material.dart';
import 'package:weatherapp/model/weather_data.dart';

import '../util/color_custome.dart';

class CurrentWeather extends StatefulWidget {
  WeatherData weatherData ;
  CurrentWeather({super.key , required this.weatherData});

  @override
  State<CurrentWeather> createState() => _CurrentWeatherState();
}

class _CurrentWeatherState extends State<CurrentWeather> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        tempeatureAreaWidget() ,
        SizedBox(height: 20,) ,
        currentWeatherMoreDetailWidget() ,

      ],
    );
  }

  Widget tempeatureAreaWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          "assets/weather/${widget.weatherData.weather[0].icon}.png",
          height: 80,
          width: 80,
        ),
        Container(
          height: 100,
          width: 1.5,
          color: CustomColors.dividerLine,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RichText(text: TextSpan(
                children: [
                  TextSpan(
                      text: "${widget.weatherData.main.temp.toInt()}°",
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 68,
                          color: CustomColors.textColorBlack
                      )
                  ),

                ]
            )),
            RichText(text: TextSpan(
                children: [
                  TextSpan(
                      text: widget.weatherData.weather[0].description,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.grey
                      )
                  ),

                ]
            ))

          ],
        )
      ],
    ) ;
  }
  Widget currentWeatherMoreDetailWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Item(text: "${widget.weatherData.wind.speed}km/h" , image: "assets/icons/windspeed.png"),
        Item(text: "${widget.weatherData.clouds.all}%",  image: "assets/icons/clouds.png"),
        Item(text: "${widget.weatherData.main.humidity}%" , image: "assets/icons/humidity.png"),

      ],
    ) ;
  }
  Widget Item({text , image}) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          padding: EdgeInsets.all(16),
          decoration: const BoxDecoration(
              color: CustomColors.cardColor ,
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Image.asset(image),
        ),
        SizedBox(height: 10,) ,
        SizedBox(
          height: 20,
          width: 60,
          child: Text(
            text,
            style:  const TextStyle(
                fontSize: 12,
                color: CustomColors.textColorBlack
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
