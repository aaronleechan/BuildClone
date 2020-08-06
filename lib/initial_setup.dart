import "package:flutter/material.dart";

import 'Instagram/main.dart';

class Initial_SetUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: NavigatorButton(
                  title: "Instagram",
                  navigator: (context) => Instagram_Clone()),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigatorButton extends StatelessWidget {
  const NavigatorButton({
    Key key,
    this.title,
    this.navigator,
  }) : super(key: key);
  final String title;
  final Function navigator;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        "Instagram Clone",
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
      color: Colors.black,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Instagram_Clone()),
        );
      },
    );
  }
}
