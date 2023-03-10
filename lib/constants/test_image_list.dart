import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TestImageList extends StatefulWidget {
  const TestImageList({super.key});

  @override
  State<TestImageList> createState() => _TestImageListState();
}

class _TestImageListState extends State<TestImageList> {
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

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
