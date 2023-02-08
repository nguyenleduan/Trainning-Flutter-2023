import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../sqlite/sqlite_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            InkWell(
              onTap: () {
                context.go('/sqlite-page');
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.blue[100],
                child: const Center(child: Text("SQLite")),
              ),
            ),
            InkWell(
              onTap: () => context.go('/router-page'),
              child: Container(
                color: Colors.yellow[100],
                padding: const EdgeInsets.all(8),
                child: const Center(child: Text('Go router')),
              ),
            ),
            InkWell(
              onTap: () => context.go('/bloc-page'),
              child: Container(
                color: Colors.green[100],
                padding: const EdgeInsets.all(8),
                child: const Center(child: Text('Bloc 8.1.2')),
              ),
            ),
            InkWell(
              // onTap: () => context.go('/bloc-page'),
              child: Container(
                color: Colors.red[100],
                padding: const EdgeInsets.all(8),
                child: const Center(child: Text('Getx')),
              ),
            ),
            InkWell(
              // onTap: () => context.go('/bloc-page'),
              child: Container(
                color: Colors.amber[100],
                padding: const EdgeInsets.all(8),
                child: const Center(child: Text('Notification')),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
