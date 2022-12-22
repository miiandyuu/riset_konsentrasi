import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:riset_konsentrasi/constants/controllers.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/controllers/menu_controller.dart';
import 'package:riset_konsentrasi/controllers/navigation_controller.dart';
import 'package:riset_konsentrasi/firebase_options.dart';
import 'package:riset_konsentrasi/pages/authetication/login/login_screen.dart';
import 'package:riset_konsentrasi/pages/authetication/signup/signup_screen.dart';
import 'package:riset_konsentrasi/pages/landing/landing_screen.dart';
import 'package:riset_konsentrasi/pages/overview/overview.dart';
import 'package:riset_konsentrasi/repositories/coordinate_repository.dart';

import 'constants/cubit/theme_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Get.put(MenuController());
  Get.put(NavigationController());
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
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Riset Konsentrasi',
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: themeMode,
            home: const LandingScreen(),
            //TODO: Change repoProvider after login
            // home: RepositoryProvider(
            //   create: (context) => CoordinateRepository(),
            //   child: const LandingScreen(),
            // ),
            //TODO:: add 404 page
            // onUnknownRoute: (settings) {
            //   GetPage(
            //     name: '/not-found',
            //     page: () => const PageNotFound(),
            //   );
            // },
            getPages: [
              GetPage(
                name: '/home',
                page: () => const LandingScreen(),
              ),
              GetPage(
                name: '/signup',
                page: () => const SignupScreen(),
              ),
              GetPage(
                name: '/login',
                page: () => const LoginScreen(),
              ),
              GetPage(
                name: "/dashboard",
                page: () => const OverviewScreen(),
              )
            ],

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
  }
}

class MainModule {
  static void init() {}
}
