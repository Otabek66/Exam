import 'package:exam/screens/home_page.dart';
import 'package:exam/screens/splash.dart';
import 'package:flutter/material.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/splash':
        return MaterialPageRoute(builder: (_) => SplashPage());
    }
  }
}
