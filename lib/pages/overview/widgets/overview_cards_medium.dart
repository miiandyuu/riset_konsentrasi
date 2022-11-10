import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/info_card.dart';

class OverviewCardsMedium extends StatelessWidget {
  const OverviewCardsMedium({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: "Rides in Progress",
              value: "7",
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              width: width / 64,
            ),
            InfoCard(
              title: "Rides in Progress",
              value: "7",
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              width: width / 64,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            InfoCard(
              title: "Rides in Progress",
              value: "7",
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              width: width / 64,
            ),
            InfoCard(
              title: "Rides in Progress",
              value: "7",
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              width: width / 64,
            ),
          ],
        )
      ],
    );
  }
}
