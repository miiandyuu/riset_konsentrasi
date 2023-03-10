import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/constants/style.dart';
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
              title: "Jumlah Pasien",
              value: "7",
              onTap: () {
                //TODO: Go to records
              },
              topColor: AppColor.primaryColorDark,
            ),
            SizedBox(
              width: width / 64,
            ),
            InfoCard(
              title: "Menunggu Pengujian",
              value: "7",
              onTap: () {
                //TODO: Go to test
              },
              topColor: AppColor.primaryColorDark,
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
              title: "Menunggu Analisa",
              value: "7",
              onTap: () {
                //TODO: Go to test
              },
              topColor: AppColor.primaryColorDark,
            ),
            SizedBox(
              width: width / 64,
            ),
            InfoCard(
              title: "Selesai Pengujian",
              value: "7",
              onTap: () {
                //TODO: Go to records
              },
              topColor: AppColor.primaryColorDark,
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
