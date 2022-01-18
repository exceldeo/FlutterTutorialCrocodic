import 'dart:io';

import 'package:my_app/models/kontak.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static const _databaseName = 'ContactDatabase.db';
  static const _databaseVersion = 1;

  //singleton class
  DatabaseHelper._();
  static final DatabaseHelper instance = DatabaseHelper._();

  Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory dataDirectory = await getApplicationDocumentsDirectory();
    String dbPath = join(dataDirectory.path, _databaseName);
    print(dbPath);
    return await openDatabase(dbPath,
        version: _databaseVersion, onCreate: _onCreateDB);
  }

  Future _onCreateDB(Database db, int version) async {
    //create tables
    await db.execute('''
      CREATE TABLE ${KontakModel.tblKontak}(
        ${KontakModel.colId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${KontakModel.colNama} TEXT NOT NULL,
        ${KontakModel.colnoHp} TEXT NOT NULL
      )
      ''');
  }

  //contact - insert
  Future<int> insertContact(KontakModel contact) async {
    Database db = await database;
    return await db.insert(KontakModel.tblKontak, contact.toMap());
  }

//contact - update
  Future<int> updateContact(KontakModel contact) async {
    Database db = await database;
    return await db.update(KontakModel.tblKontak, contact.toMap(),
        where: '${KontakModel.colId}=?', whereArgs: [contact.id]);
  }

//contact - delete
  Future<int> deleteContact(int id) async {
    Database db = await database;
    return await db.delete(KontakModel.tblKontak,
        where: '${KontakModel.colId}=?', whereArgs: [id]);
  }

//contact - retrieve all
  Future<List<KontakModel>> fetchContacts() async {
    Database db = await database;
    List<Map> contacts = await db.query(KontakModel.tblKontak);
    return contacts.length == 0
        ? []
        : contacts.map((x) => KontakModel.fromMap(x)).toList();
  }
}
