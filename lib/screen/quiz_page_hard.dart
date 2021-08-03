import 'package:flutter/material.dart';
import 'package:quiz/screen/final_result.dart';

class QuizPageHard extends StatefulWidget {
  @override
  _QuizPageHardState createState() => _QuizPageHardState();
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

class _QuizPageHardState extends State<QuizPageHard> {
  @override

  /// List question
  List<ListQuestion> quess = [
    ListQuestion("142 - 73 x 8 ?", "552", "-442", "-552", "-442"),
    ListQuestion("( 211 - 374 ) x 3 ?", "-489", "-911", "-657", "-489"),
    ListQuestion("139 + 255 x 3 ?", "1.182", "892", "904", "904"),
    ListQuestion("( 145 x 9 ) + 17 ?", "1.322", "3.770", "2.994", "1.322")
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
