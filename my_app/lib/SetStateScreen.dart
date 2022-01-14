import 'package:flutter/material.dart';

class SetStateScreen extends StatefulWidget {
  SetStateScreen({Key key}) : super(key: key);

  @override
  _SetStateScreenState createState() => _SetStateScreenState();
}

class _SetStateScreenState extends State<SetStateScreen> {
  List<Widget> widgets = [];
  int count = 0;

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
    // _MyAppState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    count++;
                    setState(() {
                      widgets.add(Text(
                        "Data ${count}",
                        style: TextStyle(fontSize: 30),
                      ));
                    });
                  },
                  child: Text("Tambah"),
                ),
                RaisedButton(
                  onPressed: () {
                    count--;
                    setState(() {
                      widgets.removeLast();
                    });
                  },
                  child: Text("Hapus"),
                ),
              ],
            ),
            Column(
              children: widgets,
            ),
          ],
        ),
      ),
    );
  }
}
