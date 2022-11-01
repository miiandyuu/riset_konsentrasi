import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riset_konsentrasi/constants/style.dart';

import '../routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = OverViewPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverViewPageRoute:
        return _customIcon(Icons.dashboard, itemName);
      case TestPageRoute:
        return _customIcon(Icons.receipt_long, itemName);
      case RecordsPageRoute:
        return _customIcon(Icons.science, itemName);
      case AuthenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);

    return Icon(icon, color: isHovering(itemName) ? dark : lightGrey);
  }
}