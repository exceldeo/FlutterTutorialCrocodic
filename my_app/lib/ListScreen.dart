import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<Widget> widgets = [];

  _MyAppState() {
    for (var i = 0; i <= 20; i++) {
      widgets.add(Text(
        "Data ${i}",
        style: TextStyle(fontSize: 30),
      ));
    }
  }

  @override
  void initState() {
    super.initState();
    _MyAppState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: SafeArea(
        child: ListView(
          children: widgets,
        ),
      ),
    );
  }
}
