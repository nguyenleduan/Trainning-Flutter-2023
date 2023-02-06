import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_flutter/core/go_router/go_router.dart';

import 'app/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: router,
    );
  }
}
