import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/widgets/custom_text.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/not_found.svg", width: 360),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomText(
                  text: "Page not found", size: 24, fontWeight: FontWeight.bold)
            ],
          )
        ],
      ),
    );
  }
}
