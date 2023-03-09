import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 320;
const int customScreenSize = 1024;

class Responsive extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  final Widget? custom;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    this.desktop,
    this.custom,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;
  static isCustom(BuildContext context) =>
      MediaQuery.of(context).size.width <= customScreenSize &&
      MediaQuery.of(context).size.width >= mediumScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth >= largeScreenSize) {
          return desktop!;
        } else if (constrains.maxWidth >= mediumScreenSize &&
            constrains.maxWidth < largeScreenSize) {
          return tablet ?? desktop!;
        } else {
          return mobile ?? desktop!;
        }
      },
    );
  }
}
