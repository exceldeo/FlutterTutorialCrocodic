import 'package:flutter/material.dart';

class RowColumnScreen extends StatefulWidget {
  RowColumnScreen({Key key}) : super(key: key);

  @override
  _RowColumnScreenState createState() => _RowColumnScreenState();
}

class _RowColumnScreenState extends State<RowColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Spacer(
                flex: 1,
              ),
              Text("Hello World"),
              Spacer(
                flex: 1,
              ),
              Text("Hello World"),
              Spacer(
                flex: 1,
              ),
              Text("Hello World"),
              Spacer(
                flex: 1,
              ),
              Text("Hello World"),
            ]),
            SizedBox(
              height: 13,
            ),
            Row(children: [
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
            ]),
            SizedBox(
              height: 13,
            ),
            Row(children: [
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
            ]),
          ],
        ),
      ),
    );
  }
}
