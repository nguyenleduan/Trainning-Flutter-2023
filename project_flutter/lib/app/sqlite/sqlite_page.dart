import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_flutter/base/models/user_model.dart';
import 'package:project_flutter/config/database/database_config.dart';
import 'package:project_flutter/config/local_keys.dart';
import 'package:project_flutter/config/table_key.dart';
import 'package:project_flutter/services/local/sqlite/database_service.dart';
import 'package:project_flutter/services/local/sqlite/database_user_service.dart';

import '../../config/dimens.dart';

class SQLitePage extends StatefulWidget {
  const SQLitePage({Key? key}) : super(key: key);

  @override
  State<SQLitePage> createState() => _SQLiteState();
}

class _SQLiteState extends State<SQLitePage> {
  String id = "";
  String name = "";
  String pass = "";
  String email = "";
  String data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        width: AppDimens.instance.screenFullWidth(context),
        height: AppDimens.instance.screenFullHeight(context),
        color: Colors.white60,
        child: Column(
          children: [
            const Text("Create User"),
            Container(
              padding: const EdgeInsets.all(5),
              child: TextField(
                onChanged: (value) {
                  id = value;
                },
                obscureText: true,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ID',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              width: AppDimens.instance.screenFullWidth(context),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        email = value;
                      },
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        pass = value;
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: TextField(
                onChanged: (value) {
                  name = value;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              width: AppDimens.instance.screenFullWidth(context),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow.shade300),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  DataBaseUserService.instance
                      .init(DatabaseConfig.instance.databasePath);
                },
                child: const Text('open'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 5,left: 5),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.yellow.shade300),
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {
                        DataBaseUserService.instance.createTable();
                      },
                      child: const Text('Create'),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.yellow.shade300),
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {
                        UserModel model =
                        UserModel(null, "email@gmail.com", "pass", "Duan");
                        DataBaseUserService.instance.insert(model);
                      },
                      child: const Text('add'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 5,left: 5),
              child: Row(
                children: [
                  Expanded(
                    child:
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.yellow.shade300),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {
                        UserModel model =
                        UserModel(1, "DuanDeptrai@gmail.com", "pass", "Duan");
                        DataBaseUserService.instance.update(model);
                      },
                      child: const Text('Update'),
                    )
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child:  TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.yellow.shade300),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () async {
                        data = await  DataBaseUserService.instance.select();
                        setState(() {

                        });
                      },
                      child: const Text('select'),
                    ),
                  ),
                ],
              ),

            ), Container(
              padding: const EdgeInsets.all(5),
              width: AppDimens.instance.screenFullWidth(context),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.yellow.shade300),
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  DataBaseUserService.instance
                      .init(DatabaseConfig.instance.databasePath);
                },
                child: const Text('Delete'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              width: AppDimens.instance.screenFullWidth(context),
              child:  Text("$data")
            ),
          ],
        ),
      ),
    );
  }
}
