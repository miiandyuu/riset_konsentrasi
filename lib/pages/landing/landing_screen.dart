import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        ElevatedButton(
            onPressed: () {
              Get.toNamed('/login');
            },
            child: Text("LOGIn")),
        ElevatedButton(
            onPressed: () {
              Get.toNamed('/signup');
            },
            child: Text("SIGNUP")),
      ]),
    );
  }
}
