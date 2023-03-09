import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/helpers/local_navigator.dart';
import 'package:riset_konsentrasi/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SideMenu()),
        Expanded(
            flex: 5,
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 56),
                child: localNavigator()))
      ],
    );
  }
}
