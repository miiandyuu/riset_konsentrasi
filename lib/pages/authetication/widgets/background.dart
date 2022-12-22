// import 'package:blobs/blobs.dart';
// import 'package:flutter/material.dart';
// import 'package:riset_konsentrasi/constants/style.dart';

// class Background extends StatelessWidget {
//   final Widget child;
//   // final String topImage, bottomImage;
//   // final Blob topImage, bottomImage;

//   const Background({Key? key, required this.child}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: SizedBox(
//         width: double.infinity,
//         height: MediaQuery.of(context).size.height,
//         child: Stack(
//           alignment: Alignment.center,
//           children: <Widget>[
//             Positioned(
//                 top: -125,
//                 left: -125,
//                 child: Blob.animatedRandom(
//                   size: 400,
//                   styles: BlobStyles(color: AppColor.primaryColor),
//                 )),
//             SafeArea(child: child)
//           ],
//         ),
//       ),
//     );
//   }
// }
