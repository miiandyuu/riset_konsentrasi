import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/widgets/custom_text.dart';

class RecentTestTable extends StatelessWidget {
  const RecentTestTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12)
          ],
          border: Border.all(color: lightGrey, width: .5)),
      child: DataTable(columns: const [
        DataColumn(label: Text("Nama Pasien")),
        DataColumn(label: Text("Nama Penguji")),
        DataColumn(label: Text("Nama Operator")),
        DataColumn(label: Text("Tindakan")),
      ], rows: [
        for (var i = 0; i < 5; i++)
          DataRow(cells: [
            DataCell(Text("Ricky Aston")),
            DataCell(Text("Prof. Reva")),
            DataCell(Text("Hayyan Yusuf")),
            DataCell(Container(
              decoration: BoxDecoration(
                  border: Border.all(color: primary, width: .5),
                  color: light,
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: CustomText(
                text: "Test Selesai",
                color: primary.withOpacity(.7),
                fontWeight: FontWeight.bold,
              ),
            )),
          ]),
      ]),
    );
  }
}
