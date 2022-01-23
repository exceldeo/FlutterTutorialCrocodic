import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  ContainerScreen({Key key}) : super(key: key);

  @override
  _ContainerScreenState createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            new BoxShadow(
              color: Colors.blue,
              offset: new Offset(4.0, 4.0),
            ),
          ],
        ),
      ),
    );
  }
}
