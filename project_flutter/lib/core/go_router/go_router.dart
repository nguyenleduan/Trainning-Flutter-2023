import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:project_flutter/app/bloc/bloc_page.dart';
import 'package:project_flutter/app/home/home_page.dart';
import 'package:project_flutter/app/router/detail_product_page.dart';
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
          name: 'sqlite-page',
          path: 'sqlite-page',
          builder: (BuildContext context, GoRouterState state) {
            return const SQLitePage();
          },
        ),
        GoRoute(
          name: 'bloc-page',
          path: 'bloc-page',
          builder: (BuildContext context, GoRouterState state) {
            return const BlocPage();
          },
        ),
        GoRoute(
          name: 'router-page',
            path: 'router-page',
            builder: (BuildContext context, GoRouterState state) {
              return const RouterPage();
            },
            routes: <RouteBase>[
              GoRoute(
                name: 'shop-page' ,
                  path: 'shop-page',
                  builder: (BuildContext context, GoRouterState state) {
                    return const ShopPage();
                  },
                  routes: <RouteBase>[
                    GoRoute(
                      name: 'detail-product-page',
                      path: 'detail-product-page/:id_product',
                      builder: (context, state) => DetailProductPage(
                        idProduct: state.params["id_product"]!,
                      ),
                    ),
                  ]),
            ]),
      ],
    ),
  ],
);
