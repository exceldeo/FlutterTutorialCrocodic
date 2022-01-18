import 'package:flutter/material.dart';
import 'package:my_app/models/kontak.dart';
import 'package:my_app/screen/UbahKontakScreen.dart';

class DetailKontakScreen extends StatelessWidget {
  const DetailKontakScreen({Key key, this.kontak}) : super(key: key);

  final KontakModel kontak;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Kontak",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
              Text(
                kontak.nama,
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
              Text(
                kontak.noHp,
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
              Row(
                children: [
                  Flexible(
                    flex: 8,
                    child: Container(
                      width: double.infinity,
                      child: RaisedButton(
                          onPressed: () {},
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Hapus",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            // side: BorderSide(color: Colors.red)
                          )),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Flexible(
                    flex: 8,
                    child: Container(
                      width: double.infinity,
                      child: RaisedButton(
                          onPressed: () async {
                            var result = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UbahKontakScreen(
                                          kontak: kontak,
                                        )));
                            print(result);
                          },
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Ubah",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          color: Colors.blueGrey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            // side: BorderSide(color: Colors.red)
                          )),
                    ),
                  ),
                ],
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
