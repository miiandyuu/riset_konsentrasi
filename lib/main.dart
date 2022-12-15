import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/routing/app_route.dart';
import 'package:riset_konsentrasi/routing/app_route_name.dart';

import 'constants/cubit/theme_cubit.dart';

void main() {
  // Get.put(MenuController());
  // Get.put(NavigationController());
  MainModule.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        )
      ],
      child: Builder(
        builder: (context) {
          final themeMode = context.watch<ThemeCubit>().state.themeMode;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Riset Konsentrasi',
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: themeMode,
            initialRoute: AppRouteName.login,
            onGenerateRoute: AppRoute.generate,
            builder: (context, child) {
              return ResponsiveWrapper.builder(child,
                  defaultScale: true,
                  breakpoints: const [
                    ResponsiveBreakpoint.resize(450, name: MOBILE),
                    ResponsiveBreakpoint.autoScale(800, name: TABLET),
                    ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                    ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
                    ResponsiveBreakpoint.autoScale(2460, name: "4K"),
                  ]);
            },
          );
        },
      ),
    );
    // GetMaterialApp(
    //   // initialRoute: authenticationPageRoute,
    //   unknownRoute: GetPage(
    //       name: "/not-found",
    //       page: () => const PageNotFound(),
    //       transition: Transition.fadeIn),
    //   home: const AuthenticationPage(),
    //   getPages: [
    //     GetPage(name: rootRoute, page: () => SiteLayout()),
    //     GetPage(
    //         name: authenticationPageRoute,
    //         page: () => const AuthenticationPage()),
    //   ],
    //   debugShowCheckedModeBanner: false,
    //   title: "Konsentrasi",
    //   theme: ThemeData(
    //       scaffoldBackgroundColor: Colors.white,
    //       elevatedButtonTheme: ElevatedButtonThemeData(
    //           style: ElevatedButton.styleFrom(
    //               elevation: 0,
    //               backgroundColor: primary,
    //               shape: const StadiumBorder(),
    //               maximumSize: const Size(double.infinity, 48),
    //               minimumSize: const Size(double.infinity, 48))),
    //       inputDecorationTheme: const InputDecorationTheme(
    //           filled: true,
    //           fillColor: lightPrimary,
    //           iconColor: primary,
    //           contentPadding: EdgeInsets.symmetric(
    //               horizontal: defaultPadding, vertical: defaultPadding),
    //           border: OutlineInputBorder(
    //               borderRadius: BorderRadius.all(Radius.circular(30)),
    //               borderSide: BorderSide.none)),
    //       textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
    //           .apply(bodyColor: Colors.black),
    //       pageTransitionsTheme: const PageTransitionsTheme(builders: {
    //         TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
    //         TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
    //       }),
    //       primaryColor: Colors.blue),
    // );
  }
}

class MainModule {
  static void init() {}
}
