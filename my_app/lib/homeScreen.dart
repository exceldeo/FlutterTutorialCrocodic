import 'package:flutter/material.dart';
import 'package:my_app/SecondScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> contacts = [
    {"nama": 'Excel', "noHp": '123454679'},
    {"nama": 'Deo', "noHp": '987654321'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        backgroundColor: Colors.amber,
      ),
      // backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        child: ListView(
          children: [
            RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondRoute()));

                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const SecondRoute()));
                },
                child: Text("Tambah"),
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  // side: BorderSide(color: Colors.red)
                )),
            Column(
              children: contacts
                  .map((e) => Container(
                        height: 80,
                        width: double.infinity,
                        decoration: new BoxDecoration(
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Card(
                          // color: Colors.black,
                          child: Row(
                            children: [
                              Image.asset('assets/logoCrocodic.png'),
                              Column(
                                children: [
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text("${e['nama']}"),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text("${e['noHp']}"),
                                  Spacer(
                                    flex: 1,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      )),
    );
  }
}
