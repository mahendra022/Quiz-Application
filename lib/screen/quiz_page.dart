import 'package:flutter/material.dart';
import 'package:quiz/screen/list_question.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override

//action program list question
  Widget _ques() {
    return Column(
      children: [
        Center(
            child: Container(
          child: Text(
            ques[0].ques,

            ///Display question
            style: TextStyle(
                color: Colors.amber, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )),
        Center(
          child: Column(
            children: [
              FlatButton(
                  color: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: () {
                    print("User jawab ${ques[0].answer1}");
                  },
                  child: Text(
                    "A. ${ques[0].answer1}",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
        Center(
          child: Column(
            children: [
              FlatButton(
                  color: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: () {
                    print("User jawab ${ques[0].answer2}");
                  },
                  child: Text(
                    "B. ${ques[0].answer2}",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
        Center(
          child: Column(
            children: [
              FlatButton(
                  color: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: () {
                    print("User jawab ${ques[0].answer3}");
                  },
                  child: Text(
                    "C. ${ques[0].answer3}",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _ques(),
          ],
        ));
  }
}
