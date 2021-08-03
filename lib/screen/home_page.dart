import 'dart:io';

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

  /// Action setting
  Padding exitbutton({Icon icon, Function onPressedFunction, String label}) {
    return Padding(
      padding: const EdgeInsets.all(13),
      child: Container(
        width: 70,
        child: Row(
          children: [
            Padding(
                padding: const EdgeInsets.all(1),
                child: GestureDetector(onTap: onPressedFunction, child: icon)),
            Text(label)
          ],
        ),
      ),
    );
  }

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
              _showModalDialog1(context);
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
              _showModalDialog2(context);
            },
            label: Text(
              "Exit",
              style: TextStyle(color: Colors.black, fontFamily: "Sen"),
            ),
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.black,
            ),
            color: Colors.white,
          ),
        )),
      ],
    );
  }

  _showModalDialog1(context) {
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

  _showModalDialog2(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                constraints: BoxConstraints(maxHeight: 100, maxWidth: 40),
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text("Are you sure exit?"),
                        ),
                        Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            exitbutton(
                                icon: Icon(
                                  Icons.check_circle,
                                  color: Colors.blue,
                                ),
                                label: 'Exit',
                                onPressedFunction: () {
                                  /// Action exit application
                                  Navigator.of(context).pop(exit(0));
                                }),
                            exitbutton(
                                icon: Icon(Icons.cancel, color: Colors.red),
                                label: 'Cancel',
                                onPressedFunction: () {
                                  Navigator.pop(context);
                                }),
                          ],
                        ))
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
