import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/info_card_small.dart';

class OverviewCardsSmall extends StatelessWidget {
  const OverviewCardsSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Jumlah Pasien",
            value: "7",
            onTap: () {},
            isActive: true,
          ),
          const SizedBox(
            height: 16,
          ),
          InfoCardSmall(
            title: "Menunggu Pengujian",
            value: "7",
            onTap: () {},
            isActive: true,
          ),
          const SizedBox(
            height: 16,
          ),
          InfoCardSmall(
            title: "Menunggu Analisa",
            value: "7",
            onTap: () {},
            isActive: true,
          ),
          const SizedBox(
            height: 16,
          ),
          InfoCardSmall(
            title: "Selesai Pengujian",
            value: "7",
            onTap: () {},
            isActive: true,
          ),
        ],
      ),
    );
  }
}
