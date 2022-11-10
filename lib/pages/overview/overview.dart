import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riset_konsentrasi/constants/controllers.dart';
import 'package:riset_konsentrasi/helpers/responsiveness.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/overview_cards_large.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/overview_cards_medium.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/overview_cards_small.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/scatter_chart.dart';
import 'package:riset_konsentrasi/widgets/custom_text.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomScreen(context))
                const OverviewCardsMedium()
              else
                const OverviewCardsLarge()
            else
              const OverviewCardsSmall(),
            const SizedBox(
              height: 24,
            ),
            TestChart(),
          ],
        ))
      ],
    );
  }
}
