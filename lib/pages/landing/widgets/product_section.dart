import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:riset_konsentrasi/constants/style.dart';
import 'package:riset_konsentrasi/helpers/responsive_screen.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        desktop: _buildUI(1000.0),
        tablet: _buildUI(760.0),
        mobile: _buildUI(MediaQuery.of(context).size.width * .8));
  }

  Widget _buildUI(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            defaultScale: false,
            child: Flex(
                direction: constraints.maxWidth > 720
                    ? Axis.horizontal
                    : Axis.vertical,
                children: [
                  Expanded(
                      flex: constraints.maxWidth > 720.0 ? 1 : 0,
                      child: Image.asset(
                        "assets/images/landing-page-graphic2.png",
                        width: constraints.maxWidth > 720.0 ? null : 350.0,
                      )),
                  Expanded(
                      flex: constraints.maxWidth > 720.0 ? 1 : 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "VR DEVICE",
                            style: AppTextStyle.instance.displaySmall,
                          ),
                          const SizedBox(height: 15.0),
                          Text(
                            "VR Device and Web App",
                            style: AppTextStyle.instance.headlineSmall,
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            "Menggunakan perangkat VR dan aplikasi web yang dikembangkan sendiri sehingga memiliki ekosistem terintegrasi yang mudah untuk digunakan.",
                            style: AppTextStyle.instance.bodyMedium,
                          ),
                          const SizedBox(height: 25.0),
                          Row(
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  height: 48.0,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 28.0),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Center(
                                        child: Text(
                                          "EXPLORE MORE",
                                          style: AppTextStyle
                                              .instance.titleMedium
                                              .copyWith(color: AppColor.white),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          )
                        ],
                      ))
                ]),
          );
        },
      ),
    );
  }
}
