import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:project_flutter/config/table_key.dart';

class UserModel extends Equatable {
  int ? id;
  String email;
  String pass;
  String? name;

    UserModel(this.id, this.email, this.pass, this.name);


  factory UserModel.fromMap(Map<String, Object?> map) {
    return UserModel(
      map['id'] as int?,
      '${map['email']}',
      '${map['pass']}',
      '${map['name']}',
    );
  }

  factory UserModel.fromJson(String source) {
    return UserModel.fromMap(json.decode(source));
  }

  Map<String, Object?> toMapDB() {
    var map = <String, Object?>{
      TableKey.instance.emailUser: email,
      TableKey.instance.passUser: pass,
      TableKey.instance.nameUser: name,
      // columnDone: done == true ? 1 : 0
    };
    if (id != null) {
      map[TableKey.instance.idUser] = id;
    }
    return map;
  }

  @override
  List<Object?> get props => [id, email, pass, name];
}
