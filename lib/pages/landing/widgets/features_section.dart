import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/helpers/responsive_screen.dart';

import '../../../models/features_landing_page_model.dart';

final List<FeaturesModel> featuresModel = [
  FeaturesModel(
    "ACCURACY",
    const Icon(Icons.ads_click),
    "Designed to calculate autism child accuracy based on pictures",
  ),
  FeaturesModel(
    "SAFETY",
    const Icon(Icons.fingerprint),
    "Designed to calculate autism child accuracy based on pictures",
  ),
  FeaturesModel(
    "LEARNING",
    const Icon(Icons.lightbulb),
    "Designed to calculate autism child accuracy based on pictures",
  ),
  FeaturesModel(
    "AUTISM",
    const Icon(Icons.face),
    "Designed to calculate autism child accuracy based on pictures",
  ),
];

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Responsive(
          mobile: _buildUI(context, MediaQuery.of(context).size.width * .8),
          tablet: _buildUI(context, 760.0),
          desktop: _buildUI(context, 1000.0)),
    );
  }

  Widget _buildUI(BuildContext context, double width) {
    return ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       "Akurasi Tinggi",
          //       style: AppTextStyle.instance.headlineMedium,
          //     ),
          //     GestureDetector(
          //       onTap: () {},
          //       child: MouseRegion(
          //         cursor: SystemMouseCursors.click,
          //         child: Text("data"),
          //       ),
          //     )
          //   ],
          // ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            child: LayoutBuilder(
              builder: (_context, constraints) {
                return ResponsiveGridView.builder(
                  padding: EdgeInsets.all(0.0),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  alignment: Alignment.topCenter,
                  gridDelegate: ResponsiveGridDelegate(
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 20.0,
                      maxCrossAxisExtent: Responsive.isTablet(context) ||
                              Responsive.isMobile(context)
                          ? constraints.maxWidth / 2.0
                          : 250.0,
                      childAspectRatio: Responsive.isDesktop(context)
                          ? 1
                          : MediaQuery.of(context).size.aspectRatio * 1.5),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            featuresModel[index].icon,
                            SizedBox(width: 15.0),
                            Text(
                              featuresModel[index].title,
                              style: AppTextStyle.instance.headlineSmall,
                            )
                          ],
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          featuresModel[index].subtitle,
                          style: AppTextStyle.instance.bodyMedium,
                        )
                      ],
                    );
                  },
                  itemCount: featuresModel.length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
