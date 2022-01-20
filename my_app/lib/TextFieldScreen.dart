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
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    //         Map<String, TextEditingController> mapTextController = {
    //   "nama": TextEditingController(),
    //   "noHp": TextEditingController(),
    // };
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
