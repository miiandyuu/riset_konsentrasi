import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/info_card.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/info_card_small.dart';

class OverviewCardsSmall extends StatelessWidget {
  const OverviewCardsSmall({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides in Progress",
            value: "7",
            onTap: () {},
            isActive: true,
          ),
          SizedBox(
            height: 16,
          ),
          InfoCardSmall(
            title: "Rides in Progress",
            value: "7",
            onTap: () {},
            isActive: true,
          ),
          SizedBox(
            height: 16,
          ),
          InfoCardSmall(
            title: "Rides in Progress",
            value: "7",
            onTap: () {},
            isActive: true,
          ),
          SizedBox(
            height: 16,
          ),
          InfoCardSmall(
            title: "Rides in Progress",
            value: "7",
            onTap: () {},
            isActive: true,
          ),
        ],
      ),
    );
  }
}
