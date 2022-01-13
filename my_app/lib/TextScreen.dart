import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  TextScreen({Key key}) : super(key: key);

  @override
  _TextScreenState createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(8.0),
            // color: Colors.blue[600],
            color: Color.fromRGBO(50, 178, 193, 1),
            alignment: Alignment.center,
            child: Text(
              'Selamat Datang di pelatihan crocodic',
              maxLines: 1,
              textAlign: TextAlign.center,
              // overflow: TextOverflow.ellipsis,
              // overflow: TextOverflow.fade,
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Roboto',
                color: Colors.white,
                // fontWeight: FontWeight.bold,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
    );
  }
}
