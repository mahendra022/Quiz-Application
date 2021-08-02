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
          margin: const EdgeInsets.only(top: 20),
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
              _showModalDialog(context);
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

  _showModalDialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Container(
                constraints: BoxConstraints(maxHeight: 170, maxWidth: 40),
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: Container(
                          child: FlatButton(
                            onPressed: () {
                              _onLoading();
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
                              _onLoading();
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
                              _onLoading();
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
