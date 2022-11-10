import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/helpers/responsiveness.dart';
import 'package:riset_konsentrasi/widgets/large_screen.dart';
import 'package:riset_konsentrasi/widgets/side_menu.dart';
import 'package:riset_konsentrasi/widgets/small_screen.dart';
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
        body: const ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
