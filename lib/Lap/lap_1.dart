import 'package:flutter/material.dart';

class Lap1 extends StatefulWidget {
  const Lap1({super.key});

  @override
  State<Lap1> createState() => _Lap1State();
}

class _Lap1State extends State<Lap1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "I am rich",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Image.asset("images/diamond.png"),
      ),
    ) ;
  }
}
