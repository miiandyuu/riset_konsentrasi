// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:riset_konsentrasi/firebase/bloc/coordinate_bloc.dart';
// import 'package:riset_konsentrasi/firebase/get_data.dart';
// import 'package:riset_konsentrasi/repositories/coordinate_repository.dart';

// class FirebaseTestingScreen extends StatelessWidget {
//   const FirebaseTestingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

//     return BlocProvider(
//       create: (context) => CoordinateBloc(
//           coordinateRepository:
//               RepositoryProvider.of<CoordinateRepository>(context)),
//       child: Scaffold(
//         key: scaffoldKey,
//         body: BlocListener<CoordinateBloc, CoordinateState>(
//           listener: (context, state) {
//             if (state is CoordinateAdded) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text("Coordinate added")));
//             }
//           },
//           child: BlocBuilder<CoordinateBloc, CoordinateState>(
//             builder: (context, state) {
//               if (state is CoordinateAdding) {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               } else if (state is CoordinateError) {
//                 // print(state);
//                 return const Center(
//                   child: Text("Error"),
//                 );
//               }
//               return const GetUsername();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
