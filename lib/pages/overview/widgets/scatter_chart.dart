// ignore_for_file: library_private_types_in_public_api, unused_local_variable

import 'dart:async';
// import 'dart:convert';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TestChart extends StatefulWidget {
  const TestChart({Key? key}) : super(key: key);

  @override
  TestChartState createState() => TestChartState();
}

class TestChartState extends State<TestChart> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
  final CollectionReference firestoreInstance =
      FirebaseFirestore.instance.collection('Ricky Aston');

  loadData() async {
    await firestoreInstance.doc('Gambar1').get().then((value) {
      String x = value['1']['x'];
      String y = value['1']['y'];
      // return x;
    });
    for (var i = 1;
        i < (await firestoreInstance.count().get()).count + 1;
        i++) {
      await firestoreInstance.doc('Gambar$i').get().then((value) {
        String x = value['$i']['x'];
        String y = value['1']['y'];
        // print(x);
        // return x;
        print("X: $x, Y: $y");
      });
    }
  }

  coordinateX() async {
    for (var i = 1;
        i < (await firestoreInstance.count().get()).count + 1;
        i++) {
      await firestoreInstance.doc('Gambar$i').get().then((value) {
        String x = value['$i']['x'];
        // String y = value['1']['y'];
        // print(x);
        return x;
      });
    }
  }

  coordinateY() {
    firestoreInstance.doc('Gambar1').get().then((value) {
      // String x = value['1']['x'];
      String y = value['1']['y'];
      // print(x);
    });
  }

  @override
  void initState() {
    // TODO:: Change into take data from API
    int start = 60;
    const countDown = Duration(microseconds: 1);
    Timer timer = Timer.periodic(
      countDown,
      (timer) {
        if (start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            start--;
            data.add(_ChartData(randomXNum(), randomYNum()));
            loadData();
          });
        }
      },
    );

    // NOTE:: 40 for carts size
    for (var i = 0; i < 40; i++) {
      data = [];
    }

    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        backgroundColor: Colors.white,
        plotAreaBackgroundImage:
            const AssetImage("images/instruments/newanimal2.png"),
        enableMultiSelection: true,
        primaryXAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
        primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
        tooltipBehavior: _tooltip,
        series: <ChartSeries<_ChartData, double>>[
          BubbleSeries<_ChartData, double>(
              minimumRadius: 5,
              maximumRadius: 15,
              dataSource: data,
              xValueMapper: (_ChartData data, _) => data.x,
              yValueMapper: (_ChartData data, _) => data.y,
              opacity: .2,
              color: Colors.blue)
        ]);
  }

  randomXNum() {
    coordinateX();
    var random = Random();
    // var i = 0;
    // while (i < 40) {
    //   return random.nextDouble();
    // }
    for (var i = 0; i < 40;) {
      return random.nextDouble() * 40;
    }
  }

  randomYNum() {
    var random = Random();
    for (var i = 0; i < 40;) {
      return random.nextDouble() * 40;
    }
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final double x;
  final double y;
}
