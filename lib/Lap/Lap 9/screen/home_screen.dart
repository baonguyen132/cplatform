import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:weatherapp/controller/global_controller.dart';
import 'package:weatherapp/widgets/detail.dart';
import 'package:weatherapp/widgets/header.dart';
import 'package:weatherapp/widgets/hourly_data.dart';

import '../widgets/current_weather.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalController globalController = Get.put(GlobalController() , permanent: true) ;
  int choosed = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
            child: Obx(() => globalController.getLoading().isTrue ?
              const Center(child: CircularProgressIndicator()) :
              ListView(
                scrollDirection: Axis.vertical,
                children: [
                  const SizedBox(height: 20,),
                  Header(globalController: globalController),
                  //
                  CurrentWeather(weatherData: globalController.weatherDataList[0],)  ,
                  const SizedBox(height: 20,),
                  HourlyData(
                    list: globalController.weatherDataList ,
                    choosed: choosed ,
                    handle: (index) {
                      setState(() {
                        choosed = index ;
                      });
                    },
                  ),
                  Detail(weatherData: globalController.weatherDataList[choosed],)

                ],
              )
            )
        ),
      ),
    );
  }
}
