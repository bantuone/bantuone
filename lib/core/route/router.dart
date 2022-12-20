import 'package:bantuone/features/home/view/home_view.dart';

import 'package:bantuone/features/order/view/order_view.dart';
import 'package:bantuone/features/feed_article/view/feed_article_view.dart';

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
      case order:
        return MaterialPageRoute(builder: (_) => const OrderView());
      case article:
        return MaterialPageRoute(builder: (_) => const FeedArticleView());
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
