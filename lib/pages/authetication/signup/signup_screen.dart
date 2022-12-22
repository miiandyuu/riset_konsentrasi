import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:riset_konsentrasi/pages/authetication/signup/widgets/signup_form.dart';

import '../../../constants/cubit/theme_cubit.dart';
import '../../../helpers/responsive_screen.dart';
import '../widgets/promotion_images.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Responsive(
              mobile: _MobileLayout(),
              tablet: _DesktopLayout(),
              desktop: _DesktopLayout()),
          Positioned(
              left: 0,
              top: 0,
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      shape: BoxShape.circle,
                      border: Responsive.isMobile(context)
                          ? Border.all(color: Colors.grey, width: 1)
                          : null),
                  child: BlocBuilder<ThemeCubit, ThemeState>(
                      builder: (context, state) {
                    return IconButton(
                        onPressed: () {
                          Get.offNamed('/home');
                        },
                        icon: const Icon(Icons.keyboard_arrow_left_rounded));
                  }))),
          Positioned(
              left: 30,
              bottom: 30,
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      shape: BoxShape.circle,
                      border: Responsive.isMobile(context)
                          ? Border.all(color: Colors.grey, width: 1)
                          : null),
                  child: BlocBuilder<ThemeCubit, ThemeState>(
                      builder: (context, state) {
                    return IconButton(
                        onPressed: () {
                          context.read<ThemeCubit>().changeThemeMode(
                              state.themeMode == ThemeMode.light
                                  ? ThemeMode.dark
                                  : ThemeMode.light);
                        },
                        icon: Icon(state.themeMode == ThemeMode.light
                            ? Icons.dark_mode
                            : Icons.light_mode));
                  })))
        ],
      ),
    );
  }
}

class _MobileLayout extends StatelessWidget {
  const _MobileLayout();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const SignupForm(),
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  const _DesktopLayout();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: SignupForm()),
        Expanded(child: PromotionImages())
      ],
    );
  }
}
