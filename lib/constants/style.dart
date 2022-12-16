import 'package:flutter/material.dart';

const double defaultPadding = 16.0;

class AppColor {
  static Color primaryColor = const Color(0xFF2A9DF4);
  static Color priamryColorLight = const Color(0xFF72CEFF);
  static Color priamryColorDark = const Color(0xFF006FC1);
  // static Color secondaryColor = const Color(0xFFFAE591);
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);
  static Color blackGrey = const Color.fromARGB(255, 39, 39, 39);
  static Color backgroundBlack = const Color.fromARGB(255, 37, 37, 37);
  static Color backgroundWhite = const Color.fromARGB(255, 255, 255, 255);
  static Color backgroundGray = const Color.fromARGB(255, 240, 240, 240);
  static Color transparent = Colors.transparent;
}

class AppTextStyle {
  static AppTextStyle instance = AppTextStyle();

  TextStyle displayLarge = TextStyle(
      color: AppColor.blackGrey, fontSize: 57, fontWeight: FontWeight.bold);
  TextStyle displayMedium = TextStyle(
      color: AppColor.blackGrey, fontSize: 45, fontWeight: FontWeight.bold);
  TextStyle displaySmall = TextStyle(
      color: AppColor.blackGrey, fontSize: 36, fontWeight: FontWeight.bold);
  TextStyle headlineLarge = TextStyle(
      color: AppColor.blackGrey, fontSize: 32, fontWeight: FontWeight.bold);
  TextStyle headlineMedium = TextStyle(
      color: AppColor.blackGrey, fontSize: 28, fontWeight: FontWeight.bold);
  TextStyle headlineSmall = TextStyle(
      color: AppColor.blackGrey, fontSize: 22, fontWeight: FontWeight.bold);
  TextStyle titleLarge = TextStyle(
      color: AppColor.blackGrey, fontSize: 22, fontWeight: FontWeight.bold);
  TextStyle titleMedium = TextStyle(
      color: AppColor.blackGrey, fontSize: 18, fontWeight: FontWeight.bold);
  TextStyle titleSmall = TextStyle(color: AppColor.blackGrey, fontSize: 14);
  TextStyle labelLarge = TextStyle(color: AppColor.blackGrey, fontSize: 14);
  TextStyle labelMedium = TextStyle(color: AppColor.blackGrey, fontSize: 12);
  TextStyle labelSmall = TextStyle(color: AppColor.blackGrey, fontSize: 11);
  TextStyle bodyLarge = TextStyle(color: AppColor.blackGrey, fontSize: 16);
  TextStyle bodyMedium = TextStyle(color: AppColor.blackGrey, fontSize: 14);
  TextStyle bodySmall = TextStyle(color: AppColor.blackGrey, fontSize: 12);
}

class AppTheme {
  static final AppTextStyle _textStyle = AppTextStyle.instance;
  static ThemeData light = ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColor.primaryColor,
      backgroundColor: AppColor.backgroundWhite,
      scaffoldBackgroundColor: AppColor.backgroundWhite,
      textTheme: TextTheme(
        displayLarge: _textStyle.displayLarge,
        displayMedium: _textStyle.displayMedium,
        displaySmall: _textStyle.displaySmall,
        headlineLarge: _textStyle.headlineLarge,
        headlineMedium: _textStyle.headlineMedium,
        headlineSmall: _textStyle.headlineSmall,
        titleLarge: _textStyle.titleLarge,
        titleSmall: _textStyle.titleSmall,
        titleMedium: _textStyle.titleMedium,
        labelLarge: _textStyle.labelLarge,
        labelMedium: _textStyle.labelMedium,
        labelSmall: _textStyle.labelSmall,
        bodyLarge: _textStyle.bodyLarge,
        bodyMedium: _textStyle.bodyMedium,
        bodySmall: _textStyle.bodySmall,
      ));

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: AppColor.backgroundBlack,
    scaffoldBackgroundColor: AppColor.backgroundBlack,
    primaryColor: AppColor.primaryColor,
    textTheme: TextTheme(
      displayLarge: _textStyle.displayLarge.copyWith(color: AppColor.white),
      displayMedium: _textStyle.displayMedium.copyWith(color: AppColor.white),
      displaySmall: _textStyle.displaySmall.copyWith(color: AppColor.white),
      headlineLarge: _textStyle.headlineLarge.copyWith(color: AppColor.white),
      headlineMedium: _textStyle.headlineMedium.copyWith(color: AppColor.white),
      headlineSmall: _textStyle.headlineSmall.copyWith(color: AppColor.white),
      titleLarge: _textStyle.titleLarge.copyWith(color: AppColor.white),
      titleSmall: _textStyle.titleSmall.copyWith(color: AppColor.white),
      titleMedium: _textStyle.titleMedium.copyWith(color: AppColor.white),
      labelLarge: _textStyle.labelLarge.copyWith(color: AppColor.white),
      labelMedium: _textStyle.labelMedium.copyWith(color: AppColor.white),
      labelSmall: _textStyle.labelSmall.copyWith(color: AppColor.white),
      bodyLarge: _textStyle.bodyLarge.copyWith(color: AppColor.white),
      bodyMedium: _textStyle.bodyMedium.copyWith(color: AppColor.white),
      bodySmall: _textStyle.bodySmall.copyWith(color: AppColor.white),
    ),
  );
}

Widget textThemeSample(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "displayLarge",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          "displayMedium",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          "displaySmall",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          "headlineLarge",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          "headlineMedium",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          "headlineSmall",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          "titleLarge",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          "titleMedium",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          "titleSmall",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          "labelLarge",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          "labelMedium",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Text(
          "labelSmall",
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Text(
          "bodyLarge",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          "bodyMedium",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          "bodySmall",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    ),
  );
}
