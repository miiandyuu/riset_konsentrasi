import 'package:flutter/material.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/pages/landing/widgets/carousels.dart';
import 'package:riset_konsentrasi/pages/landing/widgets/features_section.dart';
import 'package:riset_konsentrasi/pages/landing/widgets/header.dart';
import 'package:riset_konsentrasi/pages/landing/widgets/product_section.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return headerItems[index].isButton
                      ? MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius: BorderRadius.circular(8.0)),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 28.0),
                            child: TextButton(
                                onPressed: headerItems[index].onTap,
                                child: Text(
                                  headerItems[index].title,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        )
                      : ListTile(
                          title: Text(
                            headerItems[index].title,
                            style: const TextStyle(color: Colors.black),
                          ),
                        );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: headerItems.length),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Header(),
          Carousel(),
          SizedBox(height: 10.0),
          FeaturesSection(),
          ProductSection(),
          SizedBox(
            height: 40.0,
          )
        ],
      )),
    );
  }
}
