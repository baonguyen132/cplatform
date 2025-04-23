import 'package:flutter/material.dart';
import 'package:weatherapp/model/weather_data.dart';
import 'package:weatherapp/util/color_custome.dart';

class HourlyData extends StatefulWidget {
  List<WeatherData> list ;
  int choosed ;
  Function (int index) handle ;
  HourlyData({super.key , required this.list , required this.handle , required this.choosed});


  @override
  State<HourlyData> createState() => _HourlyDataState();
}

class _HourlyDataState extends State<HourlyData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5 , horizontal: 20),
          child: const Text(
            "NET WAY",
            style:  TextStyle(
              fontSize: 18,
              color: Colors.grey ,
            ),
          ),
        ),
        hourlyList() ,
      ],
    );
  }

  Widget hourlyList() {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 10 , bottom: 10),
      child: ListView.builder(
        itemCount: widget.list.length > 20 ? 20 : widget.list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            widget.handle(index) ;
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              width: 140,
              margin: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: CustomColors.cardColor,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0.5, 0),
                      blurRadius: 30,
                      spreadRadius: 1,
                      color: CustomColors.dividerLine.withAlpha(150),
                    )
                  ],
                  gradient: index == widget.choosed ? const LinearGradient(colors: [CustomColors.firstGradientColor, CustomColors.secondGradientColor]) : null ,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          widget.list[index].dtTxt.split(' ')[0],
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: index == widget.choosed ? Colors.grey.shade200 : Colors.black54,
                          ),
                        ),
                        Text(
                          widget.list[index].dtTxt.split(' ')[1],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            color: index == widget.choosed ? Colors.grey.shade200 : Colors.black54,
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      "assets/weather/${widget.list[index].weather[0].icon}.png",
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      "${widget.list[index].main.temp}°",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: index == widget.choosed ? Colors.grey.shade200 : Colors.black54,

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
