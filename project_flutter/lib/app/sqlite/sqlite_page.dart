import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/dimens.dart';
class SQLitePage extends StatefulWidget {
  const SQLitePage({Key? key}) : super(key: key);

  @override
  State<SQLitePage> createState() => _SQLiteState();
}

class _SQLiteState extends State<SQLitePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        width: AppDimens.instance.screenFullWidth(context),
        height: AppDimens.instance.screenFullHeight(context),
        color: Colors.blueAccent,
        child: Column(
          children: [
            Text("data"),
            Container(
              width: AppDimens.instance.screenFullWidth(context),
              child: Row(
                children: const [
                     Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
