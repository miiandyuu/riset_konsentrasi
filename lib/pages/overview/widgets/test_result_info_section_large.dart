import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/scatter_chart.dart';
import 'package:riset_konsentrasi/pages/overview/widgets/test_result_info.dart';
import 'package:riset_konsentrasi/widgets/custom_text.dart';

class TestResultInfoSectionLarge extends StatelessWidget {
  TestResultInfoSectionLarge({super.key});

  final CollectionReference firestoreInstance =
      FirebaseFirestore.instance.collection('Ricky Aston');

  loadData() async {
    // await firestoreInstance.doc('Gambar1').get().then((value) {
    //   String x = value['1']['x'];
    //   String y = value['1']['y'];
    //   // return x;
    // });
    for (var i = 1;
        i < (await firestoreInstance.count().get()).count + 1;
        i++) {
      await firestoreInstance.doc('Gambar$i').get().then((value) {
        String x = value['$i']['x'];
        // String y = value['1']['y'];
        // print(x);
        return x;
      });
    }
  }

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
                  color: AppColor.primaryColor),
              const TestChart()
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
                  TestResultInfo(title: "Nama User", amount: "Reva"),
                  TestResultInfo(title: "Nama Penguji", amount: "Reva"),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  TestResultInfo(
                      title: "Tanggal Pengujian", amount: "26/12/2022"),
                  // TestResultInfo(title: "Last 7 days", amount: "150"),
                ],
              ),
              Column(children: const [])
            ],
          ))
        ],
      ),
    );
  }
}
