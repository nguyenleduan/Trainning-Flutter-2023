import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:project_flutter/app/home/home_page.dart';
import 'package:project_flutter/app/router/router_page.dart';
import 'package:project_flutter/app/router/shop_page.dart';
import 'package:project_flutter/app/sqlite/sqlite_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage(title: "title");
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'sqlite-page',
          builder: (BuildContext context, GoRouterState state) {
            return const SQLitePage();
          },
        ),
        GoRoute(
          path: 'router-page',
          builder: (BuildContext context, GoRouterState state) {
            return const RouterPage();
          },
        ),
        GoRoute(
          path: 'shop-page',
          builder: (BuildContext context, GoRouterState state) {
            return  const ShopPage(value: '123');
          },
        ),

      ],
    ),
  ],
);