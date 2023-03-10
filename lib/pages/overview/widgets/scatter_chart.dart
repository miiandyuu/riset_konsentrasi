import 'dart:async';
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
  int _currentImageIndex = 0;
  List<String> _imagePath = [
    'images/newanimal1.png',
    'images/instruments/newanimal2.png',
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

  @override
  void initState() {
    // TODO:: Change into take data from API
    int start = 100;
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
            // loadData();
          });
        }
      },
    );

    // NOTE:: 640 for carts size
    for (var i = 0; i <= 1080; i++) {
      data = [];
    }

    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SfCartesianChart(
            backgroundColor: Colors.transparent,
            plotAreaBackgroundImage: AssetImage(_imagePath[_currentImageIndex]),
            enableMultiSelection: true,
            primaryXAxis: NumericAxis(minimum: 0, maximum: 640, interval: 50),
            primaryYAxis: NumericAxis(minimum: 0, maximum: 1080, interval: 50),
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
              data.clear();
            },
            child: Text("Next Instrumen"))
      ],
    );
  }

  randomXNum() {
    // coordinateX();
    var random = Random();
    for (var i = 0; i <= 1080; i++) {
      return random.nextDouble() * 1080;
    }
  }

  randomYNum() {
    var random = Random();
    for (var i = 0; i <= 1080; i++) {
      return random.nextDouble() * 1080;
    }
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final double x;
  final double y;
}
