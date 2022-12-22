// import 'package:flutter/material.dart';
// import 'package:riset_konsentrasi/pages/authetication/signup_page.dart';

// import '../login_page.dart';

// class LoginSignupBtn extends StatelessWidget {
//   const LoginSignupBtn({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Hero(
//             tag: "login_btn",
//             child: ElevatedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return const LoginPage();
//                 }));
//               },
//               child: Text("Masuk".toUpperCase()),
//             )),
//         const SizedBox(height: 16),
//         ElevatedButton(
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(
//                 builder: (context) {
//                   return const SignupPage();
//                 },
//               ));
//             },
//             child: Text(
//               "Daftar".toUpperCase(),
//               style: const TextStyle(color: Colors.black),
//             ))
//       ],
//     );
//   }
// }
