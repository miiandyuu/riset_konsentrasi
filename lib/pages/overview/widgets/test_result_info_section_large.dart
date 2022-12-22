import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/scatter_chart.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/test_result_info.dart';
import 'package:riset_konsentrasi/widgets/custom_text.dart';

class TestResultInfoSectionLarge extends StatelessWidget {
  const TestResultInfoSectionLarge({super.key});

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
      child: Row(
        children: [
          Expanded(
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
          )),
          Container(
            width: 1,
            height: 120,
            color: AppColor.backgroundGray,
          ),
          Expanded(
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
          ))
        ],
      ),
    );
  }
}
