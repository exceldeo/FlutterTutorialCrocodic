import 'package:flutter/material.dart';
import 'package:my_app/models/kontak.dart';
import 'package:my_app/screen/SecondScreen.dart';
import 'package:my_app/screen/TambahKontakScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<KontakModel> _kontaks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      // backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: RaisedButton(
                  onPressed: () async {
                    var result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TambahKontakScreen()));
                    print(result["nama"].text);
                    print(result["noHp"].text);
                    print(DateTime.now().millisecondsSinceEpoch);
                    int id = DateTime.now().millisecondsSinceEpoch;
                    print(id.toString());
                    KontakModel newKontak = KontakModel(
                      id: id,
                      nama: result["nama"].text,
                      noHp: result["noHp"].text,
                    );
                    setState(() {
                      _kontaks.add(newKontak);
                    });
                  },
                  child: Text("Tambah"),
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    // side: BorderSide(color: Colors.red)
                  )),
            ),
            // Column(
            //   children: _kontaks
            //       .map((e) => Container(
            //             height: 80,
            //             width: double.infinity,
            //             decoration: new BoxDecoration(
            //               boxShadow: [
            //                 new BoxShadow(
            //                   color: Colors.black.withOpacity(0.1),
            //                   blurRadius: 2.0,
            //                 ),
            //               ],
            //             ),
            //             child: Card(
            //               // color: Colors.black,
            //               child: Row(
            //                 children: [
            //                   Image.asset('assets/logoCrocodic.png'),
            //                   Column(
            //                     children: [
            //                       Spacer(
            //                         flex: 1,
            //                       ),
            //                       Text("${e.nama}"),
            //                       Spacer(
            //                         flex: 1,
            //                       ),
            //                       Text("${e.noHp}"),
            //                       Spacer(
            //                         flex: 1,
            //                       ),
            //                     ],
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ))
            //       .toList(),
            // )
            _list()
          ],
        ),
      )),
    );
  }

  _list() => Expanded(
          child: Card(
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: _kontaks.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 80,
              width: double.infinity,
              decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 2.0,
                  ),
                ],
              ),
              margin: EdgeInsets.only(bottom: 5),
              child: ListTile(
                leading: Image.asset('assets/logoCrocodic.png'),
                title: Text(_kontaks[index].nama.toUpperCase()),
                subtitle: Text(_kontaks[index].noHp),
              ),
            );
          },
        ),
      ));
}
