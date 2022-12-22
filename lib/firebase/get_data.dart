// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:flutter/material.dart';

// // class GetUserName extends StatelessWidget {
// //   final String documentId;

// //   const GetUserName({super.key, required this.documentId});

// //   @override
// //   Widget build(BuildContext context) {
// //     CollectionReference collectionRef =
// //         FirebaseFirestore.instance.collection('userTest');

// //     return FutureBuilder<DocumentSnapshot>(
// //       future: collectionRef.doc('cobaRandomKoordinat').get(),
// //       builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
// //         if (snapshot.hasError) {
// //           return const Text("Something went wrong");
// //         }

// //         if (snapshot.hasData && !snapshot.data!.exists) {
// //           return const Text(("Document does not exist"));
// //         }

// //         if (snapshot.connectionState == ConnectionState.done) {
// //           Map<String, dynamic> data =
// //               snapshot.data!.data() as Map<String, dynamic>;
// //           for (var i = 0; i < data.length; i++) {
// //             int timeRead = i;
// //             int coordinateX = data['$i']['x'];
// //             int coordinateY = data['$i']['y'];
// //             // return timeRead;
// //           }
// //           // return;
// //         }
// //         return const Text("Loading");
// //       },
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:riset_konsentrasi/models/coordinate_models.dart';

// import 'bloc/coordinate_bloc.dart';

// class GetUsername extends StatefulWidget {
//   const GetUsername({super.key});

//   @override
//   State<GetUsername> createState() => _GetUsernameState();
// }

// class _GetUsernameState extends State<GetUsername> {
//   final TextEditingController _coordinateXController = TextEditingController();
//   final TextEditingController _coordinateYController = TextEditingController();

//   Future<void> _create() async {
//     await showModalBottomSheet(
//       isScrollControlled: true,
//       context: context,
//       builder: (ctx) {
//         return Padding(
//           padding: EdgeInsets.only(
//               top: 20,
//               left: 20,
//               right: 20,
//               bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextField(
//                 controller: _coordinateXController,
//                 decoration: const InputDecoration(labelText: 'Coordinate X'),
//               ),
//               TextField(
//                 controller: _coordinateYController,
//                 decoration: const InputDecoration(labelText: 'Coordinate Y'),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                   onPressed: () async {
//                     //TODO:: string to int
//                     final String coordinateX = _coordinateXController.text;
//                     final String coordinateY = _coordinateYController.text;
//                     if (coordinateY != null) {
//                       _postData(context);
//                       _coordinateXController.text = '';
//                       _coordinateYController.text = '';
//                       Navigator.of(context).pop();
//                     }
//                   },
//                   child: const Text("Add new data"))
//             ],
//           ),
//         );
//       },
//     );
//   }

//   void _postData(context) {
//     BlocProvider.of<CoordinateBloc>(context)
//         .add(Create(_coordinateXController.text, _coordinateYController.text));
//   }

//   @override
//   void initState() {
//     super.initState();
//     BlocProvider.of<CoordinateBloc>(context).add(GetData());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(
//           child: Text("Uji coba firebase firestore"),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _create(),
//         child: const Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//       body: BlocBuilder<CoordinateBloc, CoordinateState>(
//         builder: (context, state) {
//           if (state is CoordinateLoaded) {
//             List<CoordinateModel> data = state.coordinate;
//             print(data);
//             return ListView.builder(
//               itemCount: data.length,
//               itemBuilder: (_, index) {
//                 return Card(
//                   child: ListTile(
//                     title: Text('${data[index]}'),
//                     trailing: Text(
//                         "X : ${data[index].coordinateX}, Y : ${data[index].coordinateY}"),
//                   ),
//                 );
//               },
//             );
//           } else if (state is CoordinateLoading) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           } else {
//             return Container();
//           }
//         },
//       ),
//     );
//   }
// }
