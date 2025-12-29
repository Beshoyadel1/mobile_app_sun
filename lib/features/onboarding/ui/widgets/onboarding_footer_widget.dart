import 'package:flutter/material.dart';
import '../../../../core/theming/colors.dart';
import 'onboarding_ elevated_button.dart';

class OnboardingFooterWidget extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final PageController controller;
  final VoidCallback onNext;

  final String text;

  const OnboardingFooterWidget({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.controller,
    required this.onNext,

    required this.text,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: List.generate(
              totalPages,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 2),
                height: 8,
                width: currentPage == index ? 15 : 8,
                decoration: BoxDecoration(
                  color:
                      currentPage == index
                          ? AppColors.orangeColor
                          : AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),

          OnboardingElevatedButton(
            currentPage: currentPage,
            totalPages: totalPages,
            controller: controller,
            onNext: onNext,

            text: text,
          ),

        ],
      ),
    );
  }
}

