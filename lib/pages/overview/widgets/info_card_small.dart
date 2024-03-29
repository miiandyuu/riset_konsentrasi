import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  const InfoCardSmall(
      {super.key,
      required this.title,
      required this.value,
      this.isActive = false,
      this.onTap});

  final String title;
  final String value;
  final bool? isActive;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: isActive!
                      ? AppColor.primaryColor
                      : AppColor.backgroundGray,
                  width: .5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                size: 24,
                fontWeight: FontWeight.w300,
                color:
                    isActive! ? AppColor.primaryColor : AppColor.backgroundGray,
              ),
              CustomText(
                text: value,
                size: 24,
                fontWeight: FontWeight.bold,
                color:
                    isActive! ? AppColor.primaryColor : AppColor.backgroundGray,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
