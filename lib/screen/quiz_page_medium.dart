import 'package:flutter/material.dart';
import 'package:quiz/screen/final_result.dart';

class QuizPageMedium extends StatefulWidget {
  @override
  _QuizPageMediumState createState() => _QuizPageMediumState();
}

class ListQuestion {
  String ques;
  String answer1;
  String answer2;
  String answer3;
  String answer;

  ListQuestion(String aQuest, String aAnswer1, String aAnswer2, String aAnswer3,
      String aAnswer) {
    this.ques = aQuest;
    this.answer1 = aAnswer1;
    this.answer2 = aAnswer2;
    this.answer3 = aAnswer3;
    this.answer = aAnswer;
  }
}

class _QuizPageMediumState extends State<QuizPageMedium> {
  @override

  /// List question
  List<ListQuestion> quess = [
    ListQuestion("23 x 4 x 3 ?", "189", "292", "276", "276"),
    ListQuestion("( 33 x 5 ) + 73 ?", "222", "194", "238", "238"),
    ListQuestion("( 22 + 9 ) x 9 ?", "103", "120", "94", "103"),
    ListQuestion("( 45 * 4 ) - 57 ?", "114", "123", "133", "123")
  ];

  /// algorithm application
  int quesIndex = 0;
  int score = 0;
  void _execution(String values) {
    /// check is value user correct!!
    var userAnswer = values;
    for (ListQuestion listQuestion in quess) {
      if (userAnswer == listQuestion.answer) {
        score++;
      }
    }
    var userScore = score / quess.length * 100;

    setState(() {
      if (quesIndex < quess.length - 1) {
        quesIndex++;
      } else {
        Navigator.push(
          context,

          /// push page & send data score
          MaterialPageRoute(builder: (context) => FinalResult("$userScore")),
        );
      }
    });
  }

//action program list question
  Widget _ques() {
    return Column(
      children: [
        Center(
            child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Text(
            ///Display question
            "${quess[quesIndex].ques}",
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
                  _execution(quess[quesIndex].answer1);
                },
                child: Text(
                  "A. ${quess[quesIndex].answer1}",
                  style: TextStyle(color: Colors.white),
                ),
              ),
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
                    _execution(quess[quesIndex].answer2);
                  },
                  child: Text(
                    "B. ${quess[quesIndex].answer2}",
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
                    _execution(quess[quesIndex].answer3);
                  },
                  child: Text(
                    "C. ${quess[quesIndex].answer3}",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: new Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _ques(),
          ],
        ),
      ),
    );
  }
}
