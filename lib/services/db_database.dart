import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  static const dbName = 'myDataBase.db';
  static const dbVersion = 1;
  static const dbTable = 'myTable';
  static const dbColumnId = 'id';
  static const dbColumnName = 'name';

  static final DataBaseHelper intance = DataBaseHelper();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  initDB() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, dbName);
    return await openDatabase(path, version: dbVersion, onCreate: onCreate);
  }

  Future onCreate(Database db, int version) async {
    db.execute('''
  CREATE TABLE $dbTable (
  $dbColumnId INTEGER PRIMARY KEY,
  $dbColumnName TEXT NOT NULL
   )

   ''');
  }

  //insertMethod
  insert(Map<String, dynamic> row) async {
    Database db = await intance.database;
    return await db.insert(dbTable, row);
  }

  //readMethod
  Future<List<Map<String, dynamic>>> queryDataBase() async {
    Database db = await intance.database;
    return await db.query(dbTable);
  }

  //UpdateMethod

  Future<int> update(Map<String, dynamic> row) async {
    Database db = await intance.database;
    int id = row[dbColumnId];
    return await db.update(dbTable, row, where: '?', whereArgs: [id]);
  }

  //deletemethod
  Future<int> delete(int id) async {
    Database db = await intance.database;
    return await db.delete(dbTable, where: '?', whereArgs: [id]);
  }
}
