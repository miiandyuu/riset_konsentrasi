import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:riset_konsentrasi/models/coordinate_models.dart';

class CoordinateRepository {
  final _fireCloud = FirebaseFirestore.instance.collection(
      'Ricky Aston'); //TODO: Change 'Ricky Aston' into a dynamic collection

  //NOTE:: create new coordinate
  Future<void> create({
    // required int readTime,
    required String coordinateX,
    required String coordinateY,
  }) async {
    try {
      await _fireCloud.add({"x": coordinateX, "y": coordinateY});
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print("Failed with error '${e.code}': ${e.message}");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  //NOTE:: read coordinate
  Future<List<CoordinateModel>> get() async {
    List<CoordinateModel> coordinateList = [];
    try {
      final coordinate =
          await FirebaseFirestore.instance.collection("Ricky Aston").get();
      // final test = await FirebaseFirestore.instance.collection("Ricky Aston");
      // test.get().then((value) {
      //   value.docs.forEach((element) {
      //     print("success get data");
      //     return coordinateList.add(CoordinateModel.fromJson(element.data()));
      //   });
      // }, onError: (e) => print(e));
      // FirebaseFirestore.instance.collection('Ricky Aston').get().then((value) {
      //   value.docs.forEach((element) {
      //     print("success 1");
      //     return coordinateList.add(CoordinateModel.fromJson(element.data()));
      //   });
      // });

      coordinate.docs.forEach((element) {
        print('success 2');
        return coordinateList.add(CoordinateModel.fromJson(element.data()));
      });

      return coordinateList;
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print("Failed with error: '${e.code}': ${e.message}");
      }
      return coordinateList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
