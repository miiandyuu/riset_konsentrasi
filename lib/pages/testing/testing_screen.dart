import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/controllers.dart';
import '../../helpers/responsive_screen.dart';
import '../../widgets/custom_text.dart';
import '../overview/widgets/test_result_info_section_large.dart';
// import '../overview/widgets/test_result_info_section_small.dart';

class TestingScreen extends StatelessWidget {
  const TestingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                  margin: EdgeInsets.only(
                      top: Responsive.isMobile(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            // if (!Responsive.isMobile(context))
              TestResultInfoSectionLarge()
            // else
              // const TestResultInfoSectionSmall(),
          ],
        )),
      ],
    );
  }
}
