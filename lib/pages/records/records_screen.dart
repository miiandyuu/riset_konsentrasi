import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riset_konsentrasi/pages/testing/testing_screen.dart';

import '../../constants/controllers.dart';
import '../../constants/style.dart';
import '../../helpers/responsive_screen.dart';
import '../../widgets/custom_text.dart';

class RecordsScreen extends StatefulWidget {
  const RecordsScreen({super.key});

  @override
  State<RecordsScreen> createState() => _RecordsScreenState();
}

class _RecordsScreenState extends State<RecordsScreen> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  List<DocumentSnapshot>? documents;

  void getAllCollection() {
    firestore.collection("userTest").get().then((value) {
      print("Successfully completed");
      setState(() {
        documents = value.docs;
      });
      // for (var docSnapshot in value.docs) {
      //   print('${docSnapshot.id} => ${docSnapshot.data()}');
      // }
    }, onError: (e) => print("Error completing: $e"));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FloatingActionButton(
            onPressed: () {
              return getAllCollection();
            },
          ),
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
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            padding: const EdgeInsets.all(16),
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
            child: DataTable(columns: const [
              DataColumn(label: Text("Nama Pasien")),
              DataColumn(label: Text("Tindakan")),
            ], rows: [
              if (documents != null)
                for (var docSnapshot in documents!)
                  DataRow(cells: [
                    DataCell(Text(docSnapshot.id)),
                    DataCell(Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return const TestingScreen();
                                },
                              ));
                            },
                            icon: const Icon(Icons.edit),
                            label: const Text('Details')),
                        Container(width: 25),
                        ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.delete),
                            label: const Text('Delete')),
                      ],
                    )),
                  ]),
            ]),
          )
        ],
      ),
    );
  }
}
