import 'package:cplatform/Lap/Lap7/Story.dart';
import 'package:cplatform/Lap/Lap7/story_brain.dart';
import 'package:cplatform/Lap/Lap7/widget/widget_custom_button_lap7.dart';
import 'package:cplatform/Lap/Lap7/widget/widget_title_story.dart';
import 'package:flutter/material.dart';

// Vao main sua home: Lap7()

StoryBrain storyBrain = StoryBrain() ;

class Lap7 extends StatefulWidget {
  const Lap7({super.key});

  @override
  State<Lap7> createState() => _Lap7State();
}

class _Lap7State extends State<Lap7> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/lap7/galaxy.png"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height - 150,

                child: Center(
                    child: WidgetTitleStory(title: storyBrain.getStory().storyTitle)
                )
            ),
            Container(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  WidgetCustomButtonLap7(color: Colors.green, text: storyBrain.getStory().choice1, isVisibility: true, handle: () {
                    setState(() {
                      storyBrain.nextStory(1) ;

                    });
                  },),
                  WidgetCustomButtonLap7(color: Colors.red, text: storyBrain.getStory().choice2, isVisibility: storyBrain.buttonShouldBeVisible() ,handle: () {
                    setState(() {
                      storyBrain.nextStory(2) ;
                    });
                  },),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
