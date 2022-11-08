import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/constants/style.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key,
      required this.title,
      this.value,
      this.topColor,
      this.isActive = false,
      this.onTap});

  final String title;
  final String? value;
  final Color? topColor;
  final bool? isActive;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 136,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 6),
                    color: lightGrey.withOpacity(.1),
                    blurRadius: 12)
              ],
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                    color: topColor ?? primary,
                    height: 5,
                  ))
                ],
              ),
              Expanded(child: Container()),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n",
                        style: TextStyle(
                            fontSize: 16,
                            color: isActive! ? primary : lightGrey)),
                    TextSpan(
                        text: "$value",
                        style: TextStyle(
                            fontSize: 40, color: isActive! ? primary : dark))
                  ])),
              Expanded(child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
