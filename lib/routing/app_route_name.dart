class AppRouteName {
  static const String loginPageDisplayName = "Login";
  static const String loginPageRoute = "/login";

  static const String logoutPageDisplayName = "Logout";
  static const String logoutPageRoute = "/logout";

  static const String signupPageDisplayName = "Signup";
  static const String signupPageRoute = "/signup";

  static const String notFound = "/not-found";
  // static const String dashboard = "/dashboard";

  static const String overviewPageDisplayName = "Overview";
  static const String overviewPageRoute = "/overview";

  static const String testPageDisplayName = "Test";
  static const String testPageRoute = "/test";

  static const String recordsPageDisplayName = "Records";
  static const String recordsPageRoute = "/records";

  // static const String authenticationPageDisplayName = "Log Out";
  // static const String authenticationPageRoute = "/auth";
}

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(
      AppRouteName.overviewPageDisplayName, AppRouteName.overviewPageRoute),
  MenuItem(AppRouteName.testPageDisplayName, AppRouteName.testPageRoute),
  MenuItem(AppRouteName.recordsPageDisplayName, AppRouteName.recordsPageRoute),
  MenuItem(AppRouteName.logoutPageDisplayName, AppRouteName.logoutPageRoute)
];
