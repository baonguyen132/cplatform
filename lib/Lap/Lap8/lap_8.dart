import 'dart:math';

import 'package:cplatform/Lap/Lap8/score_screen.dart';
import 'package:cplatform/Lap/Lap8/widget/widget_choose_number.dart';
import 'package:cplatform/Lap/Lap8/widget/widget_height.dart';
import 'package:flutter/material.dart';

import 'widget/widget_gender.dart';

// Vao main sua home: Lap8()

class Lap8 extends StatefulWidget {
  const Lap8({super.key});

  @override
  State<Lap8> createState() => _Lap8State();
}

class _Lap8State extends State<Lap8> {
  int _choose = 0 ; // 0 => male || 1 => female

  int _weight = 60 ;
  int _height = 150 ;
  int _age = 20 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 5, 36, 92),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white

          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Row(
              children: [
                WidgetGender(iconData: Icons.male, gender: "Male" , choosed: _choose == 0 ? true : false ,  hanlde: () {
                  setState(() {
                    _choose = 0 ;
                  });
                },) ,
                const SizedBox(width: 20,),
                WidgetGender(iconData: Icons.female, gender: "Female", choosed: _choose == 1 ? true : false , hanlde: () {
                  setState(() {
                    _choose = 1 ;
                  });
                },) ,
              ],
            ),
            const SizedBox(height: 20,) ,
            WidgetHeight(
                height: _height,
                hanlde: (value) {
                  setState(() {
                    _height = value ;
                  });
                },
            ),
            const SizedBox(height: 20,) ,
            Row(
              children: [
                WidgetChooseNumber(
                  title: "Weight",
                  number: _weight,
                  add: () {setState(() {_weight++;});},
                  mul: () {setState(() {_weight--;});},
                ),
                const SizedBox(width: 20,),
                WidgetChooseNumber(
                  title: "Age",
                  number: _age,
                  add: () {setState(() {_age++;});},
                  mul: () {setState(() {_age--;});},
                ),
              ],
            ),
            const SizedBox(height: 20,),
            TextButton.icon(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                padding: WidgetStatePropertyAll(EdgeInsets.all(20))
              ),
              icon: Icon(
                Icons.arrow_circle_right,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScoreScreen(age: _age, bmiScore: calculateBmi()),
                  )
                );
              },
              label: Text(
                "CALCULATE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  double calculateBmi() {
    return  _weight/pow(_height/100 , 2) ;
  }
}
