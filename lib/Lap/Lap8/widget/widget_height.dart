import 'package:flutter/material.dart';

class WidgetHeight extends StatefulWidget {
  int height ;
  Function (int value) hanlde ;
  WidgetHeight({super.key , required this.height , required this.hanlde});

  @override
  State<WidgetHeight> createState() => _WidgetHeightState();
}

class _WidgetHeightState extends State<WidgetHeight> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Height",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.height.toString(),
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white
                ),
              ),
              SizedBox(width: 5,),
              Text(
                "cm",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          Slider(
            min: 0,
            max: 240,
            value: widget.height.toDouble(),
            onChanged: (value) {
              widget.hanlde(value.toInt()) ;
            },
          )
        ],
      ),
    );
  }
}
