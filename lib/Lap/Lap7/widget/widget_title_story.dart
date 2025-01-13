import 'package:flutter/material.dart';

class WidgetTitleStory extends StatefulWidget {
  String title ;
  WidgetTitleStory({super.key , required this.title});

  @override
  State<WidgetTitleStory> createState() => _WidgetTitleStoryState();
}

class _WidgetTitleStoryState extends State<WidgetTitleStory> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
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
