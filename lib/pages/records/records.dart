import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riset_konsentrasi/pages/records/widgets/records_table.dart';

import '../../constants/controllers.dart';
import '../../helpers/responsive_screen.dart';
import '../../widgets/custom_text.dart';

class RecordsPage extends StatelessWidget {
  const RecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        Expanded(
            child: ListView(
          children: const [
            RecordsTable(),
          ],
        )),
      ],
    );
  }
}
