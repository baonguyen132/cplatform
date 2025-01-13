
import 'package:flutter/material.dart';

class WidgetCustomButtonLap7 extends StatefulWidget {
  Color color ;
  String text ;
  bool isVisibility ;
  Function () handle ;

  WidgetCustomButtonLap7({super.key , required this.color , required this.text, required this.isVisibility,required this.handle});

  @override
  State<WidgetCustomButtonLap7> createState() => _WidgetCustomButtonLap7State();
}

class _WidgetCustomButtonLap7State extends State<WidgetCustomButtonLap7> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.isVisibility,
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(widget.color),
              padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
          ),
          onPressed: () {
            widget.handle() ;
          },
          child: Text(
            widget.text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1
            ),
          )
      ),
    );
  }
}
