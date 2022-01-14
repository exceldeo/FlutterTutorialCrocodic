import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  TextFieldScreen({Key key}) : super(key: key);

  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  @override
  Widget build(BuildContext context) {
    // TextEditingController controller =
    // TextEditingController(text: "Nilai Awal");
    TextEditingController controller = TextEditingController();
    //         Map<String, TextEditingController> mapTextController = {
    //   "nama": TextEditingController(),
    //   "noHp": TextEditingController(),
    // };
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              // obscureText: true,
              onChanged: (value) {
                print(value);
              },
              controller: controller,
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Roboto',
                color: Colors.black,
                // fontWeight: FontWeight.bold,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
