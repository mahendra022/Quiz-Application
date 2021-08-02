import 'package:flutter/material.dart';
import 'package:quiz/screen/home_page.dart';

class FinalResult extends StatefulWidget {
  String score;
  FinalResult(this.score);
  @override
  State<StatefulWidget> createState() {
    return FinalResultState(this.score);
  }
}

class FinalResultState extends State<FinalResult> {
  String score;
  FinalResultState(this.score);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Congratulation!!",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "Your Score: ${score}",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
              child: Container(
            margin: const EdgeInsets.only(top: 50),
            child: FlatButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              label: Text(
                "Back Home",
                style: TextStyle(color: Colors.black, fontFamily: "Sen"),
              ),
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              color: Colors.amber[700],
            ),
          )),
        ],
      ),
    );
  }
}
