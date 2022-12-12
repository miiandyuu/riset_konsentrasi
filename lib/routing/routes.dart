// ignore_for_file: constant_identifier_names

const RootRoute = "/";

const OverViewPageDisplayName = "Overview";
const OverViewPageRoute = "/overview";

const TestPageDisplayName = "Test";
const TestPageRoute = "/test";

const RecordsPageDisplayName = "Records";
const RecordsPageRoute = "/records";

const AuthenticationPageDisplayName = "Log Out";
const AuthenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(OverViewPageDisplayName, OverViewPageRoute),
  MenuItem(TestPageDisplayName, TestPageRoute),
  MenuItem(RecordsPageDisplayName, RecordsPageRoute),
  MenuItem(AuthenticationPageDisplayName, AuthenticationPageRoute)
];
