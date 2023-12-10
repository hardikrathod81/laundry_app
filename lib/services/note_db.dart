// import 'dart:convert';
// import 'dart:html';
// import 'dart:js_util';

// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// final String tableNotes = 'notes';

// class NoteFields {
//   static final List<String> values = [
//     id,
//     isimportant,
//     number,
//     time,
//     title,
//     descreption
//   ];
//   static final String id = '_id';
//   static final String isimportant = 'isimportant';
//   static final String number = 'number';
//   static final String title = 'title';
//   static final String descreption = 'descreption';
//   static final String time = 'time';
// }

// class Note {
//   final int? id;
//   final bool isimportant;
//   final int number;
//   final String title;
//   final String descreption;
//   final DateTime createdTime;

//   const Note(
//       {this.id,
//       required this.isimportant,
//       required this.number,
//       required this.title,
//       required this.descreption,
//       required this.createdTime});

//   Note copy(
//           {int? id,
//           int? number,
//           bool? isimportant,
//           String? title,
//           String? descreption,
//           DateTime? createdTime}) =>
//       Note(
//           isimportant: isimportant ?? this.isimportant,
//           number: number ?? this.number,
//           title: title ?? this.title,
//           descreption: descreption ?? this.descreption,
//           createdTime: createdTime ?? this.createdTime);

//   static Note fromJson(Map<String, Object?> json) => Note(
//         id: json[NoteFields.id] as int?,
//         isimportant: json[NoteFields.isimportant] == 1,
//         number: json[NoteFields.number] as int,
//         title: json[NoteFields.title] as String,
//         descreption: json[NoteFields.descreption] as String,
//         createdTime: DateTime.parse(json[NoteFields.time] as String),
//       );

//   Map<String, Object?> toJson() => {
//         NoteFields.id: id,
//         NoteFields.isimportant: isimportant ? 1 : 0,
//         NoteFields.number: number,
//         NoteFields.title: title,
//         NoteFields.descreption: descreption,
//         NoteFields.time: createdTime.toIso8601String()
//       };
// }

// class NotesDataBase {
//   static final NotesDataBase instance = NotesDataBase.instance;

//   late Database? _database;

//   NotesDataBase._init();

//   Future<Database> get database async {
//     if (_database != null) return _database;

//     _database = await _initDB('notes.db');
//     return _database;
//   }

//   Future<Database> _initDB(String filePath) async {
//     final dbPath = await getDatabasesPath();
//     final path = join(dbPath, filePath);
//     return await openDatabase(path, version: 1, onCreate: _createDB);
//   }

//   Future _createDB(Database db, int version) async {
//     final idType = 'INTEGER PRIMERY KEY AUTOINCREMENT';
//     final textType = 'TEXT NOT NULL';
//     final boolType = 'BOOLEN NOT NULL';
//     final integerType = 'INTEGER NOT NULL';

//     await db.execute(''' 
//     CREATE TABLE $tableNotes (
//       ${NoteFields.id} $idType,
//       ${NoteFields.isimportant} $boolType,
//       ${NoteFields.number} $integerType,
//       ${NoteFields.title} $textType,
//       ${NoteFields.descreption}$textType,
//       ${NoteFields.time} $textType
//     )
//      ''');
//   }

//   Future<Note> create(Note note) async {
//     final db = await instance.database;
//     final id = await db.insert(tableNotes, note.toJson());
//     return note.copy(id: id);
//   }

//   Future<Note> readNote(int id) async {
//     final db = await instance.database;
//     {
//       {
//         final maps = await db.query(tableNotes,
//             columns: NoteFields.values,
//             where: '${NoteFields.id}=?',
//             whereArgs: [id]);

//         if (maps.isNotEmpty) {
//           return Note.fromJson(maps.first);
//         } else {
//           throw Exception('id $id not found');
//         }
//       }
//     }
//   }

//   Future<List<Note>> readALlNote() async {
//     final db = await instance.database;
//     final orderby = '${NoteFields.time} ASC';
//     final result = await db.query(tableNotes, orderBy: orderby);
//     return result.map((json) => Note.fromJson(json)).toList();
//   }

//   Future<int> update(Note note) async {
//     final db = await instance.database;
//     return db.update(tableNotes, note.toJson(),
//         where: '${NoteFields.id} = ?', whereArgs: [note.id]);
//   }

//   Future<int> delete(int id) async {
//     final db = await instance.database;
//     return await db
//         .delete(tableNotes, where: '${NoteFields.id} =?', whereArgs: [id]);
//   }

//   Future close() async {
//     final db = await instance.database;
//     db.close();
//   }
// }
