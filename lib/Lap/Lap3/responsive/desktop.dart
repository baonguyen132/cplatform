import 'package:flutter/material.dart';

import '../button.dart';
import '../item.dart';

class Desktop extends StatefulWidget {
  int dice1 , dice2 , total;
  Function hanlde ;
  Desktop({super.key , required this.dice1 , required this.dice2 , required this.total , required this.hanlde});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Item(number: widget.dice1,),
            SizedBox(width: 100,) ,
            Item(number: widget.dice2,),
          ],
        ),
        Container(
          child: Column(
            children: [
              Text(
                "Total: ${widget.total}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 2
                ),
              ),
              ButtonCustom(handle: () {
                widget.hanlde() ;
              },)
            ],
          ),
        )
      ],
    );
  }
}
