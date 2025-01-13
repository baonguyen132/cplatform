import 'package:flutter/material.dart';

class Ball extends StatefulWidget {
  int ballindex ;
  final Function () hanlde ;
  Ball({super.key , required this.ballindex , required this.hanlde});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          widget.hanlde() ;
        },
        child: Image.asset("images/lap4/ball${widget.ballindex}.png"),
      ),
    );
  }
}
