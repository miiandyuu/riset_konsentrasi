import 'package:flutter/material.dart';

import '../pages/authetication/login_screen.dart';
import 'app_route_name.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.login:
        return MaterialPageRoute(
            builder: (context) => const LoginScreen(), settings: settings);
    }
    return null;
  }
}
