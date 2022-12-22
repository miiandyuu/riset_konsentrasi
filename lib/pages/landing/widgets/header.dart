import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riset_konsentrasi/helpers/responsive_screen.dart';
import 'package:riset_konsentrasi/pages/landing/widgets/globals.dart';
import 'package:riset_konsentrasi/pages/landing/widgets/header_row.dart';

import '../../../models/header_item_model.dart';

List<HeaderItem> headerItems = [
  HeaderItem(
    title: "HOME",
    onTap: () {},
  ),
  HeaderItem(
    title: "OUR TEAM",
    onTap: () {},
  ),
  HeaderItem(
    title: "SERVICES",
    onTap: () {},
  ),
  HeaderItem(
    title: "LOGIN",
    onTap: () {
      Get.toNamed('/login');
    },
    isButton: true,
  ),
];

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Responsive(
      desktop: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: buildHeader(),
      ),
      mobile: buildMobileHeader(),
      tablet: buildHeader(),
    ));
  }

  Widget buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [HeaderRow()],
      ),
    );
  }

  Widget buildMobileHeader() {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Globals.scaffoldKey.currentState?.openEndDrawer();
            },
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 28.0,
            ),
          )
        ],
      ),
    ));
  }
}
