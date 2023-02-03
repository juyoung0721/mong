import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'models/habit.dart';

final String TableName = 'Habit';

class DBHelper {

  var _db;

  Future<Database> get database async {
    if ( _db != null ) return _db;
    _db = openDatabase(
      // 데이터베이스 경로를 지정합니다. 참고: `path` 패키지의 `join` 함수를 사용하는 것이
      // 각 플랫폼 별로 경로가 제대로 생성됐는지 보장할 수 있는 가장 좋은 방법입니다.
      join(await getDatabasesPath(), 'habits.db'),
      // 데이터베이스가 처음 생성될 때, dog를 저장하기 위한 테이블을 생성합니다.
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE habits(id INTEGER PRIMARY KEY, name TEXT)",
        );
      },
      // 버전을 설정하세요. onCreate 함수에서 수행되며 데이터베이스 업그레이드와 다운그레이드를
      // 수행하기 위한 경로를 제공합니다.
      version: 1,
    );
    return _db;
  }


  Future<void> insertDB(Habit habit) async {
    final db = await database;
    await db?.insert(TableName, habit.toMap());
  }

  Future<void> updateDB(Habit habit) async {
    final db = await database;
    await db?.update(
      TableName,
      habit.toMap(),
      where: 'id = ? ',
      whereArgs: [habit.id],
    );
  }

  Future<void> deleteDB(Habit habit) async {
    final db = await database;
    await db?.delete(
      TableName,
      where: 'id = ? ',
      whereArgs: [habit.id],
    );
  }

  Future<List<Habit>> getDB() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(TableName);

    // List<Map<String, dynamic>를 List<Memo>으로 변환합니다.
    return List.generate(maps.length, (i) {
      return Habit(
        id: maps[i]['id'],
        name: maps[i]['name'],
      );
    });
  }
}
