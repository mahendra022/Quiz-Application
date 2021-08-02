import 'package:flutter/material.dart';
import 'package:quiz/screen/quiz_page_easy.dart';
import 'package:quiz/screen/quiz_page_medium.dart';
import 'package:quiz/screen/quiz_page_hard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void _onLoadingLevel1() {
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
    new Future.delayed(new Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => QuizPageEasy()),
      );
    });
  }

  void _onLoadingLevel2() {
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
    new Future.delayed(new Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => QuizPageMedium()),
      );
    });
  }

  void _onLoadingLevel3() {
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
    new Future.delayed(new Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => QuizPageHard()),
      );
    });
  }

  Widget _mainWidget() {
    return Column(
      children: [
        Center(
            child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: FlatButton.icon(
            onPressed: () {
              _showModalDialog(context);
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
              _showModalDialog(context);
            },
            label: Text(
              "Setting",
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

  _showModalDialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Container(
                constraints: BoxConstraints(maxHeight: 200, maxWidth: 40),
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text("Select your Level",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Sen",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Center(
                            child: Container(
                          child: FlatButton(
                            onPressed: () {
                              _onLoadingLevel1();
                            },
                            child: Text(
                              "Easy",
                              style: TextStyle(
                                  color: Colors.black, fontFamily: "Sen"),
                            ),
                            color: Colors.white,
                          ),
                        )),
                        Center(
                            child: Container(
                          child: FlatButton(
                            onPressed: () {
                              _onLoadingLevel2();
                            },
                            child: Text(
                              "Medium",
                              style: TextStyle(
                                  color: Colors.black, fontFamily: "Sen"),
                            ),
                            color: Colors.white,
                          ),
                        )),
                        Center(
                            child: Container(
                          child: FlatButton(
                            onPressed: () {
                              _onLoadingLevel3();
                            },
                            child: Text(
                              "Hard",
                              style: TextStyle(
                                  color: Colors.black, fontFamily: "Sen"),
                            ),
                            color: Colors.white,
                          ),
                        )),
                      ],
                    )),
              ));
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[300],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Math-Quiz",
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
