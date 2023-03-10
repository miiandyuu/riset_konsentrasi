import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/models/carousel_items_model.dart';

List<CarouselItemModel> carouselItems = List.generate(
    5,
    (index) => CarouselItemModel(
        text: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Riset Kolaborasi",
              style: AppTextStyle.instance.titleLarge,
            ),
            const SizedBox(height: 18.0),
            Text(
              "Pengukuran Konsentrasi Anak Autism",
              style: AppTextStyle.instance.displayMedium,
            ),
            const SizedBox(height: 10.0),
            Text(
              "Riset Konsentrasi 2022 Universitas Sebelas Maret Surakarta",
              style: AppTextStyle.instance.bodyLarge,
            ),
            // const SizedBox(height: 10.0),
            const SizedBox(height: 25.0),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(8.0)),
                height: 48.0,
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "GET STARTED",
                    style: AppTextStyle.instance.titleMedium
                        .copyWith(color: AppColor.white),
                  ),
                ),
              ),
            )
          ],
        ),
        image: Image.asset(
          "assets/images/landing-page.png",
          fit: BoxFit.contain,
        )));
