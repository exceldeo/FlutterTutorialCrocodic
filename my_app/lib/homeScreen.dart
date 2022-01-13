import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RaisedButton(
                onPressed: () {},
                child: Text("Tambah"),
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  // side: BorderSide(color: Colors.red)
                )),
            Container(
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
                        Text("Nama"),
                        SizedBox(
                          height: 8,
                        ),
                        Text("No Hp")
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
