import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:riset_konsentrasi/constants/controllers.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/pages/authetication/login/login_screen.dart';
import 'package:riset_konsentrasi/widgets/custom_text.dart';
import 'package:riset_konsentrasi/widgets/side_menu_item.dart';

import '../constants/controllers.dart';
import '../helpers/responsive_screen.dart';
import '../routing/app_route_name.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final auth = FirebaseAuth.instance;

    return Container(
      color: AppColor.white,
      child: ListView(children: [
        if (Responsive.isMobile(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 40),
              Row(
                children: [
                  SizedBox(width: width / 48),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset(
                      "icons/logoUNS.png",
                      width: 28,
                    ),
                  ),
                  Flexible(
                      child: CustomText(
                    text: "Riset Kosentrasi",
                    size: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColor.primaryColor,
                  )),
                  SizedBox(width: width / 48),
                ],
              ),
            ],
          ),
        // SizedBox(height: 40),
        Divider(color: AppColor.backgroundGray),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: sideMenuItems
              .map((item) => SideMenuItem(
                    itemName: item.name,
                    onTap: () {
                      if (item.route == AppRouteName.logoutPageRoute) {
                        menuController.changeActiveItemTo(
                            AppRouteName.overviewPageDisplayName);
                        Get.offAllNamed(AppRouteName.logoutPageRoute);
                        auth.signOut();
                      }

                      // if (item.route == AppRouteName.logoutPageRoute) {
                      //   menuController.changeActiveItemTo(
                      //       AppRouteName.overviewPageDisplayName);
                      //   Get.offAllNamed(AppRouteName.logoutPageRoute);
                      //   auth.signOut();
                      // }

                      if (!menuController.isActive(item.name)) {
                        menuController.changeActiveItemTo(item.name);
                        if (Responsive.isMobile(context)) Get.back();
                        navigationController.navigateTo(item.route);
                      }
                    },
                  ))
              .toList(),
        )
      ]),
    );
  }
}
