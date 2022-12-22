import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/scatter_chart.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/test_result_info.dart';
import 'package:riset_konsentrasi/widgets/custom_text.dart';

import '../../../constants/style.dart';

class TestResultInfoSectionSmall extends StatelessWidget {
  const TestResultInfoSectionSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 6),
                color: AppColor.backgroundGray.withOpacity(.1),
                blurRadius: 12)
          ],
          border: Border.all(color: AppColor.backgroundGray, width: .5)),
      child: Column(
        children: [
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                    text: "Test Result Chart",
                    size: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColor.backgroundGray),
                TestChart()
              ],
            ),
          ),
          // Container(
          //   width: 120,
          //   height: 1,
          //   color: lightGrey,
          // ),
          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    TestResultInfo(title: "Today Result", amount: "23"),
                    TestResultInfo(title: "Last 7 days", amount: "150"),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    TestResultInfo(title: "Today Result", amount: "23"),
                    TestResultInfo(title: "Last 7 days", amount: "150"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
