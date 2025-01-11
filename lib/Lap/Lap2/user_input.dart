import 'package:flutter/material.dart';

class UserInput extends StatefulWidget {
  TextEditingController textEditingController ;
  IconData icon ;
  String hintText ;
  UserInput({super.key , required this.textEditingController, required this.icon , required this.hintText});

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(top: 30, right: 30, left: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 0 , vertical: 15),
            width: 100,
            child: Icon(
              widget.icon,
              color: Colors.green,
              size: 30,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 160,
            child: TextField(
              controller: widget.textEditingController,

              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.white,
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  color: Colors.green.shade300,
                  fontWeight: FontWeight.normal
                )
              ),
              style: TextStyle(
                fontSize: 16,
                letterSpacing: .5,
                color: Colors.green,
                fontWeight: FontWeight.bold
              ),
            ),
          )


        ],
      ),
    );
  }
}
