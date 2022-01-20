import 'package:flutter/material.dart';
import 'package:my_app/SecondScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, TextEditingController> mapTextController = {
    "nama": TextEditingController(),
    "noHp": TextEditingController(),
  };

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
                child: Text("Ke halaman berikutnya"),
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  // side: BorderSide(color: Colors.red)
                )),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: mapTextController['nama'],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nama',
                  hintText: 'Masukan Nama Anda',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: mapTextController['noHp'],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'No Hp',
                  hintText: 'Masukan No Hp',
                ),
              ),
            ),
            RaisedButton(
                onPressed: () {
                  setState(() {
                    contacts.add({
                      "nama": mapTextController['nama'].text,
                      "noHp": mapTextController['noHp'].text
                    });
                    mapTextController['nama'].clear();
                    mapTextController['noHp'].clear();
                  });
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
                          child: ListTile(
                            leading: Image.asset('assets/logoCrocodic.png'),
                            title: Text("${e['nama']}"),
                            subtitle: Text("${e['noHp']}"),
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
