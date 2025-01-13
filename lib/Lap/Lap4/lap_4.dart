import 'dart:math';

import 'package:cplatform/Lap/Lap4/Ball.dart';
import 'package:flutter/material.dart';

// Vao main sua home: Lap4()

class Lap4 extends StatefulWidget {
  const Lap4({super.key});

  @override
  State<Lap4> createState() => _Lap4State();
}

class _Lap4State extends State<Lap4> {
  int index = 1 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Magic 8 Ball",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.blue.shade200,
      body: Center(
        child: Ball(ballindex: index, hanlde: () {
          setState(() {
            index = 1+ Random().nextInt(5) ;
            print(index) ;
          });
        },),
      ),
    );
  }

}
