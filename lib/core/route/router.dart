import 'package:bantuone/features/home/view/home.dart';
import 'package:bantuone/features/login/view/login_view.dart';
import 'package:bantuone/features/order/view/order_view.dart';
import 'package:bantuone/features/register/view/register_view.dart';
import 'package:bantuone/features/start/view/start_view.dart';
import 'package:flutter/material.dart';
import 'package:bantuone/core/route/route_constants.dart';

class CustomRouter {
  static Route<dynamic> generateRoute (RouteSettings settings) {
    switch (settings.name) {
      case start:
        return MaterialPageRoute(builder: (_) => const StartView());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case register:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case order:
        return MaterialPageRoute(builder: (_) => const OrderView());
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
