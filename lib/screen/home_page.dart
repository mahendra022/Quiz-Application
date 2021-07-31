import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget _mainWidget() {
    return Column(
      children: [
        Center(
            child: Container(
          margin: const EdgeInsets.only(top: 400),
          child: FlatButton.icon(
            onPressed: () {
              print("Play");
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
        backgroundColor: Colors.amber,
        body: Column(
          children: [
            _mainWidget(),
          ],
        ));
  }
}
