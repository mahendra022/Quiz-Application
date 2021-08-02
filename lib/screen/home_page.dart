import 'package:flutter/material.dart';
import 'package:quiz/screen/quiz_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void _onLoading() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              new CircularProgressIndicator(
                  backgroundColor: Colors.transparent),
              new Text("Loading Stage"),
            ],
          ),
        );
      },
    );
    new Future.delayed(new Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => QuizPage()),
      );
    });
  }

  Widget _mainWidget() {
    return Column(
      children: [
        Center(
            child: Container(
          child: FlatButton.icon(
            onPressed: () {
              _onLoading();
            },
            label: Text(
              "Play",
              style: TextStyle(color: Colors.black, fontFamily: "Sen"),
            ),
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            color: Colors.white,
          ),
        )),
        Center(
            child: Container(
          margin: const EdgeInsets.only(top: 10),
          child: FlatButton.icon(
            onPressed: () {
              print("Setting");
            },
            label: Text(
              "Select level",
              style: TextStyle(color: Colors.black, fontFamily: "Sen"),
            ),
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            color: Colors.white,
          ),
        )),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[300],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "IQ-Quiz",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            _mainWidget(),
          ],
        ));
  }
}
