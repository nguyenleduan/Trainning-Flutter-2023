import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_flutter/core/go_router/go_router.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/bloc/bloc_service/page_bloc.dart';
import 'app/home/home_page.dart';
import 'base/app_bloc_observer.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  Bloc.observer = const AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageBloc()..add(CallApi()),
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}
