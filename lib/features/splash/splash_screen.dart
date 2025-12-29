import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../features/onboarding/ui/onboarding_screen.dart';
import '../../../core/theming/colors.dart';
import 'dart:async';

import '../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../core/theming/assets.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          NavigateToPageWidget(const OnboardingScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.orangeColor,
              AppColors.lightOrangeColor,
            ],
          ),
        ),
        child: Column(
          children: [
            const Spacer(flex: 3,),
            Center(
              child: Image.asset(
                AppImageKeys.onboardingIcon,
                width: 126,
                height: 116,
              ),
            ),
            const Spacer(flex: 2,),
            Image.asset(
              AppImageKeys.carIcon,
              width: 416,
              height: 161,
            ),
          ],
        ),
      ),
    );
  }
}

