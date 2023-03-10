import 'package:flutter/material.dart';
// import 'package:riset_konsentrasi/pages/404/not_found_page.dart';
import 'package:riset_konsentrasi/pages/overview/overview_screen.dart';
import 'package:riset_konsentrasi/pages/records/records_screen.dart';

import '../pages/authetication/login/login_screen.dart';
import '../pages/authetication/signup/signup_screen.dart';
import '../pages/testing/testing_screen.dart';
import 'app_route_name.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.loginPageRoute:
        return MaterialPageRoute(
            builder: (context) => const LoginScreen(), settings: settings);
      case AppRouteName.signupPageRoute:
        return MaterialPageRoute(
            builder: (context) => const SignupScreen(), settings: settings);
      // case AppRouteName.notFound:
      //   return MaterialPageRoute(
      //       builder: (context) => const PageNotFound(), settings: settings);
      case AppRouteName.overviewPageRoute:
        return MaterialPageRoute(
            builder: (context) => const OverviewScreen(), settings: settings);
       case AppRouteName.testPageDisplayName:
        return MaterialPageRoute(
            builder: (context) => const TestingScreen(), settings: settings);
      case AppRouteName.recordsPageRoute:
        return MaterialPageRoute(
            builder: (context) => const RecordsScreen(), settings: settings);
      case AppRouteName.ujiCobaPageDisplayName:
        return MaterialPageRoute(
            builder: (context) => const TestingScreen(), settings: settings);
    }
    return null;
  }
}
