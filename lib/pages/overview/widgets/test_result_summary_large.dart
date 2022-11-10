import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/widgets/custom_text.dart';

class TestResultSummaryLarge extends StatelessWidget {
  const TestResultSummaryLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12)
          ],
          border: Border.all(color: lightGrey, width: .5)),
      child: Row(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CustomText(
                text: "Test Result",
                size: 20,
                fontWeight: FontWeight.bold,
                color: lightGrey,
              ),
              SizedBox(
                width: 600,
                height: 200,
                child: Text(""),
              )
            ],
          ))
        ],
      ),
    );
  }
}
