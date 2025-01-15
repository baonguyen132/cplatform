import 'package:flutter/material.dart';
import 'package:pretty_gauge/pretty_gauge.dart';

class ScoreScreen extends StatefulWidget {
  final double bmiScore ;
  int age ;

  String? bmiStatus, bmiInterpretation;
  Color? bmiStatusColor ;


  ScoreScreen({super.key , required  this.age , required this.bmiScore});

  void setBmiInterpretation() {
    if (bmiScore > 30) {
      bmiStatus = "Obese";
      bmiInterpretation = "Please work to reduce obesity";
      bmiStatusColor = Colors.pink;
    } else if (bmiScore >= 25) {
      bmiStatus = "Overweight";
      bmiInterpretation = "Do regular exercise & reduce the weight";
      bmiStatusColor = Colors.orange;
    } else if (bmiScore >= 18.5) {
      bmiStatus = "Normal";
      bmiInterpretation = "Enjoy, You are fit";
      bmiStatusColor = Colors.green;
    } else if (bmiScore < 18.5) {
      bmiStatus = "Underweight";
      bmiInterpretation = "Try to increase the weight";
      bmiStatusColor = Colors.red;
    }
  }

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {

  @override
  Widget build(BuildContext context) {
    widget.setBmiInterpretation() ;

    return Scaffold(
      backgroundColor: Colors.indigo,
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0x4FFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        margin: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  textAlign: TextAlign.center,
                  "Your Score",
                  style: TextStyle(
                      fontSize: 30 ,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                PrettyGauge(
                  gaugeSize: 300,
                  minValue: 0,
                  maxValue: 40,
                  segments: [
                    GaugeSegment("UnderWeight", 18.5, Colors.red),
                    GaugeSegment("Normal", 6.4, Colors.green),
                    GaugeSegment("OverWeight", 5 , Colors.orange),
                    GaugeSegment("Obese", 10.1, Colors.pink),
                  ],

                  valueWidget: Text(
                    widget.bmiScore.toStringAsFixed(1),
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white
                    ),
                  ),
                  currentValue: widget.bmiScore.toDouble(),
                  needleColor: Colors.blue,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.bmiStatus!,
                  style: TextStyle(fontSize: 20, color: widget.bmiStatusColor!),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.bmiInterpretation!,
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue),
                        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 20 , horizontal: 20)),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Re-calculate",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,

                      ),
                    )
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }

}
