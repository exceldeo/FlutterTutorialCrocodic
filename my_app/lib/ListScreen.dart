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
        child: ListView(children: widgets
            // [
            //   Text(
            //     "Data 1",
            //     style: TextStyle(fontSize: 30),
            //   ),
            //   Text(
            //     "Data 2",
            //     style: TextStyle(fontSize: 30),
            //   ),
            //   Text(
            //     "Data 3",
            //     style: TextStyle(fontSize: 30),
            //   ),
            //   Text(
            //     "Data 4",
            //     style: TextStyle(fontSize: 30),
            //   ),
            //   Text(
            //     "Data 5",
            //     style: TextStyle(fontSize: 30),
            //   ),
            //   Text(
            //     "Data 6",
            //     style: TextStyle(fontSize: 30),
            //   ),
            //   Text(
            //     "Data 7",
            //     style: TextStyle(fontSize: 30),
            //   ),
            //   Text(
            //     "Data 8",
            //     style: TextStyle(fontSize: 30),
            //   ),
            //   Text(
            //     "Data 9",
            //     style: TextStyle(fontSize: 30),
            //   ),
            //   Text(
            //     "Data 10",
            //     style: TextStyle(fontSize: 30),
            //   ),
            // ],
            ),
      ),
    );
  }
}
