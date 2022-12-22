import 'package:flutter/cupertino.dart';
import 'package:riset_konsentrasi/constants/controllers.dart';
import 'package:riset_konsentrasi/routing/app_route.dart';

// import '../routing/router.dart';
// import '../routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      // initialRoute: overViewPageRoute,
      onGenerateRoute: AppRoute.generate,
    );
