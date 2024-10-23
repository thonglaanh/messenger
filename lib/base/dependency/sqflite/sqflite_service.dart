import 'dart:convert';

import 'package:messenger/base/dependency/network/users/model/user_model.dart';
import 'package:sqflite/sqflite.dart';

const _databaseName = 'messenger.db';
const _databaseVersion = 1;
const _tableUsers = 'users';
const _tableChats = 'chats';

class SqfLiteService {
  late final Database _database;

  SqfLiteService();

  Future<void> initialize() async {
    _database = await _initDatabase();
  }

  Future<Database> _initDatabase() async {
    return await openDatabase(
      _databaseName,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $_tableUsers (
        id TEXT PRIMARY KEY,
        displayName TEXT NOT NULL,
        status INTEGER NOT NULL,
        avatar TEXT NOT NULL,
        createdAt DATETIME NOT NULL,
        updatedAt DATETIME NOT NULL,
        friends TEXT NOT NULL,
        phoneNumber TEXT NOT NULL,
        email TEXT NOT NULL
      )
    ''');
    await db.execute('''
      CREATE TABLE $_tableChats (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        userId TEXT NOT NULL,
        message TEXT NOT NULL,
        createdAt DATETIME NOT NULL,
        FOREIGN KEY (userId) REFERENCES $_tableUsers(id) ON DELETE CASCADE
      )
    ''');
  }

  Future<int> insert(UserModel user) async {
    try {
      Map<String, dynamic> data = user.toJson();
      data['status'] = user.status == true ? 1 : 0;
      data['friends'] = jsonEncode(user.friends);

      return await _database.insert(_tableUsers, data);
    } catch (e) {
      print("Error inserting data: $e");
      return -1;
    }
  }

  Future<UserModel?> query(int id) async {
    try {
      final List<Map<String, dynamic>> maps =
          await _database.query(_tableUsers, where: 'id = ?', whereArgs: [id]);
      if (maps.isNotEmpty) {
        Map<String, dynamic> data = maps.first;
        data['friends'] = jsonDecode(data['friends']);
        return UserModel.fromJson(data);
      } else {
        return null;
      }
    } catch (e) {
      print("Error querying data: $e");
      return null;
    }
  }

  Future<List<UserModel>> queryAllUsers() async {
    try {
      final List<Map<String, dynamic>> maps =
          await _database.query(_tableUsers);
      return maps
          .map(
            (e) => UserModel.fromJson(e),
          )
          .toList();
    } catch (e) {
      print("Error querying data: $e");
      return [];
    }
  }

  Future<int> update(UserModel user) async {
    try {
      return await _database.update(
        _tableUsers,
        user.toJson(),
        where: 'id = ?',
        whereArgs: [user.id],
      );
    } catch (e) {
      print("Error updating data: $e");
      return -1;
    }
  }

  Future<int> delete(int id) async {
    try {
      return await _database.delete(
        _tableUsers,
        where: 'id = ?',
        whereArgs: [id],
      );
    } catch (e) {
      print("Error deleting data: $e");
      return -1;
    }
  }

  Future<void> close() async {
    await _database.close();
  }

  Future<void> printAllTables() async {
    final tables = await _database
        .rawQuery("SELECT name FROM sqlite_master WHERE type='table'");
    for (var table in tables) {
      print(table['name']);
    }
  }

  Future<int> deleteAll() async {
    try {
      await _database.delete(_tableChats);
      return await _database.delete(_tableUsers);
    } catch (e) {
      print("Error deleting all data: $e");
      return -1;
    }
  }

  Future<int> insertChat(Map<String, dynamic> data) async {
    try {
      return await _database.insert(_tableChats, data);
    } catch (e) {
      print("Error inserting data: $e");
      return -1;
    }
  }

  Future<Map<String, dynamic>?> getChat(String id) async {
    try {
      final result = await _database.rawQuery('''
        SELECT chat FROM $_tableChats
        INNER JOIN users ON chat.id = user.id
        ORDER BY createdAt DESC
        LIMIT 7     
      ''');
      if (result.isNotEmpty) {
        return result.first;
      } else {
        return null;
      }
    } catch (e) {
      print("Error deleting table: $e");
    }
    return null;
  }

  Future<List<Map<String, dynamic>>> getAllChats() async {
    try {
      final List<Map<String, dynamic>> maps = await _database.rawQuery('''
        SELECT chats.*, users.* 
        FROM $_tableChats AS chats
        INNER JOIN $_tableUsers AS users 
        ON chats.userId = users.id
        ORDER BY chats.createdAt DESC   
        LIMIT 7 
      ''');
      return maps;
    } catch (e) {
      print("Error querying data: $e");
      return [];
    }
  }
}
