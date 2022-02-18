import 'package:exam/screens/home_page.dart';
import 'package:exam/screens/sign_in.dart';
import 'package:exam/screens/sign_up.dart';
import 'package:exam/screens/splash.dart';
import 'package:flutter/material.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LogInPage());
      case '/splash':
        return MaterialPageRoute(builder: (_) => SplashPage());

      case '/signUp':
        return MaterialPageRoute(builder: (_) => SignUpPage());
         case '/homePage':
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
