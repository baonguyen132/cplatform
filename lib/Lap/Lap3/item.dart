import 'dart:math';

import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  int number ;

  Item({super.key , required this.number});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: max(200, MediaQuery.of(context).size.width*0.3),
      child: Image.asset("images/lap3/dice${widget.number}.png"),
    );
  }
}
