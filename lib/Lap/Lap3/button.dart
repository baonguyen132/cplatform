import 'package:flutter/material.dart';

class ButtonCustom extends StatefulWidget {
  final Function () handle ;
  ButtonCustom({super.key, required this.handle});

  @override
  State<ButtonCustom> createState() => _ButtonCustomState();
}

class _ButtonCustomState extends State<ButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        widget.handle();
      },
      icon: Icon(Icons.ads_click , color: Colors.black,),
      label: Text(
        "Randmon",
        style: TextStyle(
          color: Colors.black
        ),
      ),
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.white),
        padding: WidgetStatePropertyAll(EdgeInsets.all(10)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))))
      ),

    );
  }
}
