import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: TextField(
                    onChanged: (value) {

                      // setState(() {});
                    },
                  ),
                ),Container(
                  child: TextField(
                    onChanged: (value) {

                      // setState(() {});
                    },
                  ),
                ),
                Container(
                  child: TextField(
                    onChanged: (value) {

                      // setState(() {});
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
