import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/helpers/responsiveness.dart';
import 'package:riset_konsentrasi/widgets/horizontal_menu_item.dart';
import 'package:riset_konsentrasi/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({super.key, required this.itemName, required this.onTap});

  final String itemName;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomScreen(context))
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );

    return HorizontalMenuItem(
      itemName: itemName,
      onTap: onTap,
    );
  }
}
