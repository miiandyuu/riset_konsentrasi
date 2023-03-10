import 'package:flutter/cupertino.dart';
import 'package:riset_konsentrasi/constants/controllers.dart';
import 'package:riset_konsentrasi/routing/app_route.dart';
import 'package:riset_konsentrasi/routing/app_route_name.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: AppRouteName.overviewPageRoute,
      onGenerateRoute: AppRoute.generate,
    );
