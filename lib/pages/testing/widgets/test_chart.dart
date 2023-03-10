import 'dart:async';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TestResultChart extends StatefulWidget {
  const TestResultChart({Key? key}) : super(key: key);

  @override
  TestResultChartState createState() => TestResultChartState();
}

class TestResultChartState extends State<TestResultChart> {
  int _currentImageIndex = 0;
  List<String> _imagePath = [
    'images/newanimal1.png',
    'images/animals2.png',
    'images/shapeC1.png',
    'images/shapeC2.png',
    'images/shapeC3.png',
  ];

  void _changeBackgroundImage() {
    setState(() {
      _currentImageIndex = (_currentImageIndex + 1) % _imagePath.length;
    });
  }

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
    return Stack(children: [
      Image.asset(
        _imagePath[_currentImageIndex],
        fit: BoxFit.contain,
        height: double.infinity,
        width: double.infinity,
      ),
      SfCartesianChart(
          backgroundColor: Colors.transparent,
          // plotAreaBackgroundImage:
          //     AssetImage("images/instruments/newanimal2.png"),
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
          ]),
      ElevatedButton(
          onPressed: () {
            _changeBackgroundImage();
            initState();
          },
          child: Text('Next Image'))
    ]);
  }

  randomXNum() {
    coordinateX();
    var random = Random();
    for (var i = 0; i < 40; i++) {
      return random.nextDouble() * 40;
    }
  }

  randomYNum() {
    var random = Random();
    for (var i = 0; i < 40; i++) {
      return random.nextDouble() * 40;
    }
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final double x;
  final double y;
}
