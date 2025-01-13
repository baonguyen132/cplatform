import 'dart:math';


import 'package:cplatform/Lap/Lap3/responsive/desktop.dart';
import 'package:cplatform/Lap/Lap3/responsive/mobile.dart';
import 'package:flutter/material.dart';

// Vao main sua home: Lap3()

class Lap3 extends StatefulWidget {

  const Lap3({super.key});


  @override
  State<Lap3> createState() => _Lap3State();
}

class _Lap3State extends State<Lap3> {
  final random = Random() ;

  int dice1 = 1 ;
  int dice2 = 1 ;

  int total = 2 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child:
        MediaQuery.of(context).size.width < 500 ?
        Mobile(dice1: dice1, dice2: dice2, total: total, hanlde: (){randomTotal() ;},)
        :
        Desktop(dice1: dice1, dice2: dice2, total: total, hanlde: (){randomTotal() ;},)
      ),
    );
  }

  void randomTotal() {
    setState(() {
      total = 2 + random.nextInt(11) ;
      dice1 = 1 + random.nextInt(6);
      while (!(total - dice1 <= 6 && total - dice1 >= 1)) {
        dice1 = 1 + random.nextInt(6);
      }
      dice2 = total - dice1 ;
    });
  }
}
