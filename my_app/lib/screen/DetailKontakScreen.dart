import 'package:flutter/material.dart';
import 'package:my_app/models/kontak.dart';
import 'package:my_app/screen/UbahKontakScreen.dart';
import 'package:my_app/utils/DatabaseHelper.dart';

class DetailKontakScreen extends StatefulWidget {
  const DetailKontakScreen({Key key, this.kontak}) : super(key: key);

  final KontakModel kontak;

  @override
  _DetailKontakScreenState createState() => _DetailKontakScreenState();
}

class _DetailKontakScreenState extends State<DetailKontakScreen> {
  DatabaseHelper _dbHelper;

  @override
  void initState() {
    super.initState();
    _dbHelper = DatabaseHelper.instance;
  }

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
                widget.kontak.nama,
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
                widget.kontak.noHp,
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
                          onPressed: () async {
                            var result =
                                await _dbHelper.deleteContact(widget.kontak.id);
                            print('result = ${result}');
                            Navigator.pop(context);
                          },
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
                                          kontak: widget.kontak,
                                        )));
                            if (result != null) {
                              KontakModel editKontak = KontakModel(
                                id: widget.kontak.id,
                                nama: result["nama"].text,
                                noHp: result["noHp"].text,
                              );
                              var result2 =
                                  await _dbHelper.updateContact(editKontak);
                              print('result = ${result2}');
                              if (result2 == 1) {
                                setState(() {
                                  widget.kontak.nama = editKontak.nama;
                                  widget.kontak.noHp = editKontak.noHp;
                                });
                              }
                            }
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
