import 'package:flutter/cupertino.dart';
import 'package:riset_konsentrasi/constants/controllers.dart';
import 'package:riset_konsentrasi/routing/router.dart';
import 'package:riset_konsentrasi/routing/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
  onGenerateRoute: generateRoute,
);
