import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/helpers/local_navigator.dart';
import 'package:riset_konsentrasi/helpers/responsive_screen.dart';
import 'package:riset_konsentrasi/widgets/large_screen.dart';
import 'package:riset_konsentrasi/widgets/side_menu.dart';
import 'package:riset_konsentrasi/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        extendBodyBehindAppBar: true,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: const Drawer(
          child: SideMenu(),
        ),
        body: const Responsive(
          mobile: _MobileLayout(),
          tablet: _DesktopLayout(),
          desktop: _DesktopLayout(),
        ));
  }
}

class _MobileLayout extends StatelessWidget {
  const _MobileLayout();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: localNavigator(),
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  const _DesktopLayout();

  @override
  Widget build(BuildContext context) {
    return const LargeScreen();
  }
}
