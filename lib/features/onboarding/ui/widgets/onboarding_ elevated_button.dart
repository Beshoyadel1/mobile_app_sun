import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/pages_widgets/general_widgets/elevated_button_widget.dart';
import '../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../auth/login/ui/login_screen.dart';

class OnboardingElevatedButton extends StatelessWidget {

  final int currentPage;
  final int totalPages;
  final PageController controller;
  final VoidCallback onNext;

  final String text;

  const OnboardingElevatedButton ({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.controller,
    required this.onNext,

    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final bool isLastPage = currentPage == totalPages - 1;

    return ElevatedButtonWidget(
      onPressed: () {
        if (isLastPage) {
          Navigator.of(context).pushReplacement(
            NavigateToPageWidget(const LoginScreen()),
          );
        } else {
          onNext();
          controller.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        }
      },
      style: isLastPage
          ? ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding:
        const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
        backgroundColor: AppColors.orangeColor,
        foregroundColor: AppColors.whiteColor,
      )
          : ElevatedButton.styleFrom(
        shape: const CircleBorder(
          side: BorderSide(color: AppColors.orangeColor, width: 8),
        ),
        padding: const EdgeInsets.all(18),
        backgroundColor: AppColors.whiteColor,
        foregroundColor: AppColors.orangeColor,
      ),
      child: isLastPage
          ?     TextInAppWidget(
        text: text,
        textSize: 16,
        fontWeightIndex: FontSelectionData.boldFontFamily,
        textColor: AppColors.whiteColor,
      )
          : const Icon(Icons.arrow_forward_ios),
    );
  }
}