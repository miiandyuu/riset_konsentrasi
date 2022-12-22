// import 'package:flutter/material.dart';

// const int largeScreenSize = 1366;
// const int mediumScreenSize = 768;
// const int smallScreenSize = 320;
// const int customScreenSize = 1024;

// class Responsive extends StatelessWidget {
//   final Widget? largeScreen;
//   final Widget? mediumScreen;
//   final Widget? smallScreen;
//   final Widget? customScreen;

//   const Responsive(
//       {Key? key,
//       required this.largeScreen,
//       this.mediumScreen,
//       this.smallScreen,
//       this.customScreen})
//       : super(key: key);

//   static bool isSmallScreen(BuildContext context) =>
//       MediaQuery.of(context).size.width < mediumScreenSize;

//   static bool isMediumScreen(BuildContext context) =>
//       MediaQuery.of(context).size.width >= mediumScreenSize &&
//       MediaQuery.of(context).size.width < largeScreenSize;

//   static bool isLargeScreen(BuildContext context) =>
//       MediaQuery.of(context).size.width > largeScreenSize;

//   static bool isCustomScreen(BuildContext context) =>
//       MediaQuery.of(context).size.width <= customScreenSize &&
//       MediaQuery.of(context).size.width >= mediumScreenSize;

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         if (constraints.maxWidth >= largeScreenSize) {
//           return largeScreen!;
//         } else if (constraints.maxWidth < largeScreenSize &&
//             constraints.maxWidth >= mediumScreenSize) {
//           return mediumScreen ?? largeScreen!;
//         } else {
//           return smallScreen ?? largeScreen!;
//         }
//       },
//     );
//   }
// }
