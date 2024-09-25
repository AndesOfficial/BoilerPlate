import 'package:flutter/material.dart';
import '/screens/signin_page.dart';
import '/screens/signup_page.dart';
import '/screens/home_page.dart';

class AppRoutes {
  static const String signIn = '/signin';
  static const String signUp = '/signup';
  static const String home = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signIn:
        return MaterialPageRoute(builder: (_) => SignInPage());
      case signUp:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        return MaterialPageRoute(
          builder: (_) => SignInPage(), // Default route or error page
        );
    }
  }
}
