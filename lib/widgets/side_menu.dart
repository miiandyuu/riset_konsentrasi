import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riset_konsentrasi/constants/controllers.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/helpers/responsiveness.dart';
import 'package:riset_konsentrasi/routing/routes.dart';
import 'package:riset_konsentrasi/widgets/custom_text.dart';
import 'package:riset_konsentrasi/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(children: [
        if (ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(width: width / 48),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset(
                      "assets/logoUNS.png",
                      width: 28,
                    ),
                  ),
                  const Flexible(
                      child: CustomText(
                    text: "Riset Kosentrasi",
                    size: 20,
                    fontWeight: FontWeight.bold,
                    color: primary,
                  )),
                  SizedBox(width: width / 48),
                ],
              ),
            ],
          ),
        // SizedBox(height: 40),
        Divider(color: lightGrey.withOpacity(.1)),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: sideMenuItems
              .map((item) => SideMenuItem(
                    itemName: item.name,
                    onTap: () {
                      if (item.route == AuthenticationPageRoute) {
                        menuController
                            .changeActiveItemTo(OverViewPageDisplayName);
                        Get.offAllNamed(AuthenticationPageRoute);
                      }

                      if (!menuController.isActive(item.name)) {
                        menuController.changeActiveItemTo(item.name);
                        if (ResponsiveWidget.isSmallScreen(context)) Get.back();
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
