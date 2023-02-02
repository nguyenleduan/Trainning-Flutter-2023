

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._internal();

  static String get initial => home;

  static const String home = '/home';
  static const String about = '/about';

  /// This is where you handle routing by name and arguments
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.home: // create page
        // return MaterialPageRoute(
        //   settings: routeSettings,
        //   builder: (_) => RouteUtil.createPageProvider<HomeProvider>(
        //     provider: (_) => HomeProvider(GetIt.I()),
        //     child: HomePage(),
        //   ),
        // );
      case Routes.about:

      default:
        return null;
    }
  }
}
