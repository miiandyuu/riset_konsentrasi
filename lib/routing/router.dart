import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/pages/overview/overview.dart';
import 'package:riset_konsentrasi/pages/records/records.dart';
import 'package:riset_konsentrasi/pages/test/test.dart';
import 'package:riset_konsentrasi/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(const OverviewPage());
    case TestPageRoute:
      return _getPageRoute(const TestPage());
    case RecordsPageRoute:
      return _getPageRoute(const RecordsPage());
    // case AuthenticationPageRoute:
    //   return _getPageRoute(AuthenticationPage());
    default:
      return _getPageRoute(const OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
