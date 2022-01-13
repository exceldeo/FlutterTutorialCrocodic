import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  ButtonScreen({Key key}) : super(key: key);

  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RaisedButton(
              onPressed: () {},
              child: Text('Enabled Button', style: TextStyle(fontSize: 20)),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                "Flat Button",
              ),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text(
                "Outline Button",
              ),
            ),
            IconButton(
              icon: Icon(Icons.home),
              tooltip: 'Icon Button',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
