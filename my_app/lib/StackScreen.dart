import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  StackScreen({Key key}) : super(key: key);

  @override
  _StackScreenState createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
              // Stack(children: [
              //   Container(
              //     color: Colors.green,
              //   ),
              //   Container(
              //     color: Colors.red,
              //     height: 400.0,
              //     width: 300.0,
              //   ),
              //   Container(
              //     color: Colors.deepPurple,
              //     height: 200.0,
              //     width: 200.0,
              //   ),
              // ]),
              IndexedStack(
        index: 2,
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
            height: 400.0,
            width: 300.0,
          ),
          Container(
            color: Colors.deepPurple,
            height: 200.0,
            width: 200.0,
          ),
        ],
      )),
    );
  }
}
