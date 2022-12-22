import 'package:flutter/cupertino.dart';
import 'package:riset_konsentrasi/constants/style.dart';

class TestResultInfo extends StatelessWidget {
  const TestResultInfo({super.key, required this.title, required this.amount});

  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: "$title \n\n",
                style: TextStyle(color: AppColor.backgroundGray, fontSize: 16)),
            TextSpan(
                text: "\$ $amount ",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          ])),
    );
  }
}
