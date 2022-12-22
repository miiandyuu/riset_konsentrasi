import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/constants/style.dart';
// import 'package:riset_konsentrasi/helpers/responsiveness.dart';
import 'package:riset_konsentrasi/widgets/custom_text.dart';

import '../helpers/responsive_screen.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !Responsive.isMobile(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/logoUNS.png",
                    width: 28,
                  ),
                )
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu)),
      elevation: 0,
      title: Row(
        children: [
          Visibility(
              child: CustomText(
            text: "Riset Konsentrasi",
            color: AppColor.backgroundGray,
            size: 20,
            fontWeight: FontWeight.bold,
          )),
          Expanded(child: Container()),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: AppColor.backgroundBlack.withOpacity(.7),
              )),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: AppColor.backgroundBlack.withOpacity(.7),
                  )),
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: AppColor.white, width: 2)),
                  ))
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: AppColor.backgroundGray,
          ),
          const SizedBox(
            width: 16,
          ),
          CustomText(
            text: "Ricky Aston",
            color: AppColor.backgroundGray,
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: AppColor.white,
                child: Icon(
                  Icons.person_outline,
                  color: AppColor.backgroundBlack,
                ),
              ),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: AppColor.backgroundBlack),
      backgroundColor: Colors.transparent,
    );
