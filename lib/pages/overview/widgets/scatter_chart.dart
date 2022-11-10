// ignore_for_file: library_private_types_in_public_api, unused_local_variable

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TestChart extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  TestChart({Key? key}) : super(key: key);

  @override
  TestChartState createState() => TestChartState();
}

class TestChartState extends State<TestChart> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

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

        // plotAreaBackgroundImage: , // TODO:: put in your iamge here
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
    var random = Random();
    for (var i = 0; i < 30; i++) {
      return random.nextDouble() * 30;
    }
  }

  randomYNum() {
    var random = Random();
    for (var i = 0; i < 30; i++) {
      return random.nextDouble() * 30;
    }
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final double x;
  final double y;
}
