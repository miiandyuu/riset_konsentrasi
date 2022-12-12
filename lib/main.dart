import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/controllers/menu_controller.dart';
import 'package:riset_konsentrasi/controllers/navigation_controller.dart';
import 'package:riset_konsentrasi/layout.dart';
import 'package:riset_konsentrasi/pages/404/not_found_page.dart';
import 'package:riset_konsentrasi/pages/authetication/authentication.dart';
import 'package:riset_konsentrasi/routing/routes.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AuthenticationPageRoute,
      unknownRoute: GetPage(
          name: "/not-found",
          page: () => const PageNotFound(),
          transition: Transition.fadeIn),
      getPages: [
        GetPage(name: RootRoute, page: () => SiteLayout()),
        GetPage(
            name: AuthenticationPageRoute,
            page: () => const AuthenticationPage()),
      ],
      debugShowCheckedModeBanner: false,
      title: "Konsentrasi",
      theme: ThemeData(
          scaffoldBackgroundColor: light,
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
          }),
          primaryColor: Colors.blue),
    );
  }
}
