import 'package:flutter/material.dart';
import 'package:weatherapp/screen/home_screen.dart';

import '../model/constants.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {

  @override
  Widget build(BuildContext context) {
    Constants myContainer = Constants() ;
    Size size = MediaQuery.of(context).size ;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: myContainer.primaryColor.withOpacity(.5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/get-started.png"),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),)) ;
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    height: 50,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: myContainer.secondaryColor ,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Center(
                      child: Text(
                        "Get started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
