import 'package:bantuone/features/home/view/home_view.dart';



import 'package:bantuone/features/start/view/start_view.dart';
import 'package:flutter/material.dart';
import 'package:bantuone/core/route/route_constants.dart';

class CustomRouter {
  static Route<dynamic> generateRoute (RouteSettings settings) {
    switch (settings.name) {
      case start:
        return MaterialPageRoute(builder: (_) => const StartView());
      case login:
      case home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("Route not found"),
            ),
          )
        );
    }
  }

}
