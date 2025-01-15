import 'package:flutter/material.dart';

class WidgetGender extends StatefulWidget {
  IconData iconData ;
  String gender ;
  Function () hanlde ;
  bool choosed ;
  WidgetGender({super.key , required this.iconData , required this.gender, required this.choosed ,required this.hanlde});

  @override
  State<WidgetGender> createState() => _WidgetGenderState();
}

class _WidgetGenderState extends State<WidgetGender> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              widget.hanlde() ;
            },
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: widget.choosed ?  Colors.indigoAccent : Colors.indigo
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    widget.iconData ,
                    color: widget.gender == "Male" ? Colors.blue : Colors.pink,
                    size: 100,
                  ),
                  Text(
                    widget.gender,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 20
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
