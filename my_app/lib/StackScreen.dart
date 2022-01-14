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
        child: Stack(children: [
          Container(
            color: Colors.amber,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
          RaisedButton(
            onPressed: () {},
            child: Text('Enabled Button', style: TextStyle(fontSize: 20)),
          ),
        ]),
      ),
    );
  }
}
