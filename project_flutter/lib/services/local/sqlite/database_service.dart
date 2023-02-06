import 'package:project_flutter/base/models/user_model.dart';
import 'package:project_flutter/config/database/database_config.dart';
import 'package:project_flutter/config/database/table_user.dart';
import 'package:project_flutter/config/table_key.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseService {
  DataBaseService._();

  static final DataBaseService _instance = DataBaseService._();

  static DataBaseService get instance => _instance;

  Database? db;

  Future open(String path) async {
    db = await openDatabase(DatabaseConfig.instance.databasePath, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
create table ${TableUser.instance.tableUser} ( 
  ${TableUser.instance.idUser} integer primary key autoincrement, 
  ${TableUser.instance.emailUser} text not null,
  ${TableUser.instance.passUser} text not null,
  ${TableUser.instance.nameUser} text not null)
''');
    });
  }
  Future<UserModel> insert(UserModel user) async {
    user.id   = await db!.insert(TableUser.instance.tableUser, user.toMapDB());
    return user;
  }
  Future<UserModel?> getUserID(int id) async {
    var maps = await db!.query(TableUser.instance.tableUser,
        columns: [TableUser.instance.idUser, TableUser.instance.emailUser, TableUser.instance.passUser,TableUser.instance.nameUser],
        where: '${TableUser.instance.idUser} = ?',
        whereArgs: [id]);
    if (maps.length > 0) {
      return UserModel.fromMap(maps.first);
    }
    return null;
  }

  Future<int> delete(int id) async {
    return await db!.delete(TableUser.instance.tableUser, where: '${TableUser.instance.idUser} = ?', whereArgs: [id]);
  }
  Future<int> update(UserModel todo) async {
    return await db!.update(TableUser.instance.tableUser, todo.toMapDB(),
        where: '${TableUser.instance.idUser} = ?', whereArgs: [todo.id]);
  }
  Future close() async => db!.close();

}
