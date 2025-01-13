import 'package:flutter/material.dart';

class WidgetQuestion extends StatefulWidget {
  String text ;
  WidgetQuestion({super.key , required this.text});

  @override
  State<WidgetQuestion> createState() => _WidgetQuestionState();
}

class _WidgetQuestionState extends State<WidgetQuestion> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        letterSpacing: 0.5,
        wordSpacing: 1,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

