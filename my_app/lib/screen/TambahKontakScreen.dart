import 'package:flutter/material.dart';
import 'package:my_app/screen/homeScreen.dart';

class TambahKontakScreen extends StatefulWidget {
  TambahKontakScreen({Key key}) : super(key: key);

  @override
  _TambahKontakScreenState createState() => _TambahKontakScreenState();
}

class _TambahKontakScreenState extends State<TambahKontakScreen> {
  Map<String, TextEditingController> mapTextController = {
    "nama": TextEditingController(),
    "noHp": TextEditingController(),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tambah Kontak",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(
                flex: 1,
              ),
              Text(
                "Nama",
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              TextField(
                // obscureText: true,
                onChanged: (value) {
                  print(value);
                },
                controller: mapTextController["nama"],
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Text(
                "No HP",
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              TextField(
                // obscureText: true,
                onChanged: (value) {
                  print(value);
                },
                keyboardType: TextInputType.number,
                controller: mapTextController["noHp"],
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.pop(context, mapTextController);
                    },
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Tambah",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      // side: BorderSide(color: Colors.red)
                    )),
              ),
              Spacer(
                flex: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
