import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riset_konsentrasi/constants/controllers.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/overview_cards_large.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/overview_cards_medium.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/overview_cards_small.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/recent_test_table.dart';
// import 'package:riset_konsentrasi/helpers/responsiveness.dart';
// import 'package:riset_konsentrasi/pages/overview/widgets/test_result_info_section_large.dart';
// import 'package:riset_konsentrasi/pages/overview/widgets/test_result_info_section_small.dart';
import 'package:riset_konsentrasi/widgets/custom_text.dart';

import '../../helpers/responsive_screen.dart';

User? loggedinUser;

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedinUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(children: [
              Container(
                  margin: EdgeInsets.only(
                      top: Responsive.isMobile(context) ? 56 : 6),
                  child: CustomText(
                      text: menuController.activeItem.value,
                      size: 24,
                      fontWeight: FontWeight.bold))
            ])),
        Expanded(
            child: ListView(
          children: [
            if (Responsive.isDesktop(context) || Responsive.isTablet(context))
              if (Responsive.isDesktop(context))
                const OverviewCardsMedium()
              else
                const OverviewCardsLarge()
            else
              const OverviewCardsSmall(),
            const SizedBox(height: 24),
            // if (!Responsive.isMobile(context))
            //   TestResultInfoSectionLarge()
            // else
            //   const TestResultInfoSectionSmall(),
            const RecentTestTable()
          ],
        ))
      ],
    );
  }
}
