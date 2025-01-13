import 'package:cplatform/Lap/Lap6/QuestionModal.dart';
import 'package:cplatform/Lap/Lap6/widget_custom_button_lap6.dart';
import 'package:cplatform/Lap/Lap6/widget_question.dart';
import 'package:flutter/material.dart';

class Lap6 extends StatefulWidget {
  const Lap6({super.key});
// Vao main sua home: Lap6()
  @override
  State<Lap6> createState() => _Lap6State();
}

class _Lap6State extends State<Lap6> {

  int index = 0 ;
  List<Questionmodal> listQuestion = [
    Questionmodal(question: "1+1=2", answer: true) ,
    Questionmodal(question: "1+1=3", answer: false) ,
    Questionmodal(question: "Học phân đa nền tảng là học phần 3 tín chỉ", answer: false) ,
    Questionmodal(question: "Học phân đa nền tảng là học phần 2 tín chỉ", answer: true) ,
    Questionmodal(question: "Năm nay VKU kỉ niệm 6 năm thành lập trường", answer: false) ,
    Questionmodal(question: "Năm nay VKU kỉ niệm 5 năm thành lập trường", answer: true) ,

  ];
  List<bool> listAnswer = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 200,

              child: Center(
                child: WidgetQuestion(text: listQuestion[index].question)
              )
            ),
            Container(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  WidgetCustomButtonLap6(color: Colors.green, text: "True" , handle: () {
                    setState(() {
                      listAnswer.add(answer(true, listQuestion[index])) ;

                      if(index == listQuestion.length - 1) {index = 0 ;}
                      else {index++ ;}
                    });
                  },),
                  WidgetCustomButtonLap6(color: Colors.red, text: "False", handle: () {
                    setState(() {
                      listAnswer.add(answer(false, listQuestion[index])) ;

                      if(index == listQuestion.length - 1) {index = 0 ;}
                      else {index++ ;}
                    });
                  },),
                  
                  Container(
                    height: 50,
                    child: SingleChildScrollView(
                      child: Wrap(
                        children: listAnswer.map(
                                (e) => e ?
                            Icon(Icons.check , color: Colors.green) :
                            Icon(Icons.close, color: Colors.red)
                        ).toList(),
                      ),
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
  bool answer(bool answer , Questionmodal question) {
    return answer == question.answer ;
  }
}
