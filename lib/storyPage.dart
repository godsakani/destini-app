// ignore_for_file: prefer_const_constructors

import 'package:destini/story_bank.dart';
import 'package:flutter/material.dart';

StoryBank storybank = StoryBank();
class StoryPage extends StatefulWidget {
  const StoryPage({ Key? key }) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image:DecorationImage(
            image:AssetImage('images/background.png'),
            fit: BoxFit.cover,
             )
        ),
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  <Widget>[
            Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storybank.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
                ),
                Expanded(
                  flex: 2,
                child: Visibility(
                  visible: storybank.buttonShouldBeVisible(),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        storybank.nextStory(1);
                      });
                    },
                    color: Colors.red,
                    child: Text(
                      storybank.getChoice1(),
                      style: TextStyle(
                        fontSize: 20.0,
                        ),
                    ),
                  ),
                ),
              ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
                  flex: 2,
                child: Visibility(
                  visible: storybank.buttonShouldBeVisible(),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        storybank.nextStory(2);
                      });
                    },
                    color: Colors.blue,
                    child: Text(
                      storybank.getChoice2(),
                      style: TextStyle(
                        fontSize: 20.0,
                        ),
                    ),
                  ),
                ),
              ),
          ],
        ),
        ),
      ),
    );
  }
}