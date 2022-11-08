import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/pages/authetication/authentication.dart';
import 'package:riset_konsentrasi/pages/overview/overview.dart';
import 'package:riset_konsentrasi/pages/records/records.dart';
import 'package:riset_konsentrasi/pages/test/test.dart';
import 'package:riset_konsentrasi/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverviewPage());
    case TestPageRoute:
      return _getPageRoute(TestPage());
    case RecordsPageRoute:
      return _getPageRoute(RecordsPage());
    // case AuthenticationPageRoute:
    //   return _getPageRoute(AuthenticationPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
