import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riset_konsentrasi/firebase/firebase_testing_screen.dart';
import 'package:riset_konsentrasi/firebase/get_data.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/login');
                },
                child: Text("LOGIN")),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/signup');
                },
                child: Text("SIGNUP")),
            SizedBox(
              height: 24,
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(context, MaterialPageRoute(
            //         builder: (context) {
            //           return FirebaseTestingScreen();
            //         },
            //       ));
            //       // GetUserName(documentId: 'cobaRandomKoordinat');
            //     },
            //     child: Text("test firebase")),
          ]),
    );
  }
}
