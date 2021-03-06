import 'package:flutter/material.dart';
import 'package:my_app/models/kontak.dart';
import 'package:my_app/screen/DetailKontakScreen.dart';
import 'package:my_app/screen/TambahKontakScreen.dart';
import 'package:my_app/utils/DatabaseHelper.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<KontakModel> _kontaks = [];
  DatabaseHelper _dbHelper;

  @override
  void initState() {
    super.initState();
    _dbHelper = DatabaseHelper.instance;
    _refreshContactList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kontak App"),
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
                    if (result != null) {
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
                      await _dbHelper.insertContact(newKontak);
                      await _refreshContactList();
                    }
                  },
                  child: Text("Tambah"),
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    // side: BorderSide(color: Colors.red)
                  )),
            ),
            _list()
          ],
        ),
      )),
    );
  }

  _list() => FutureBuilder(
      future: _refreshContactList(),
      builder: (context, projectSnap) {
        if (projectSnap.connectionState == ConnectionState.none &&
            projectSnap.hasData == null) {
          //print('project snapshot data is: ${projectSnap.data}');
          return Container();
        }
        return Expanded(
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
                  onTap: () {
                    print(_kontaks[index].id.toString());
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailKontakScreen(kontak: _kontaks[index])));
                  },
                ),
              );
            },
          ),
        ));
      });

  _refreshContactList() async {
    List<KontakModel> datas = await _dbHelper.fetchContacts();
    setState(() {
      _kontaks = datas;
    });
  }
}
