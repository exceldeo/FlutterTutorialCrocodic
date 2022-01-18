import 'package:flutter/material.dart';
import 'package:my_app/ButtonScreen.dart';
import 'package:my_app/DimensiScreen.dart';
import 'package:my_app/ListScreen.dart';
import 'package:my_app/RowColumnScreen.dart';
import 'package:my_app/SetStateScreen.dart';
import 'package:my_app/StackScreen.dart';
import 'package:my_app/TextFieldScreen.dart';
import 'package:my_app/screen/homeScreen.dart';
import 'package:my_app/screen/tambahKontakScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My App',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.amber,
        ),
        home: HomeScreen());
  }
}
