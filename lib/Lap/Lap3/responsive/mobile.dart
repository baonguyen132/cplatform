import 'package:flutter/material.dart';

import '../button.dart';
import '../item.dart';

class Mobile extends StatefulWidget {
  Mobile({super.key , required this.dice1 , required this.dice2 , required this.total , required this.hanlde});
  int dice1 , dice2 , total;
  Function hanlde ;

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Item(number: widget.dice1,),
            SizedBox(height: 50,),
            Item(number: widget.dice2,),
          ],
        ) ,
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
