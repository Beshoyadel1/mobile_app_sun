
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/language/language.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../../model/onboarding_model.dart';
import 'onboarding_footer_widget.dart';

class OnboardingStackWidget extends StatelessWidget {
  final List<OnboardingModel> onboardingList;
  final int currentPage;
  final PageController controller;
  final Function(int) onPageChanged;
  final VoidCallback onNext;


  const OnboardingStackWidget({
    super.key,
    required this.onboardingList,
    required this.currentPage,
    required this.controller,
    required this.onPageChanged,
    required this.onNext,

  });

  @override
  Widget build(BuildContext context) {
    return   PageView.builder(
        controller: controller,
        itemCount: onboardingList.length,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          final item = onboardingList[index];
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(item.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      AppColors.greyColor.withValues(alpha: 0.9),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 10,
                  children: [
                    const SizedBox(height: 80),
                    TextInAppWidget(
                      text: item.title,
                      textSize: 22,
                      fontWeightIndex: FontSelectionData.boldFontFamily,
                      textColor: AppColors.whiteColor,
                    ),
                    TextInAppWidget(
                      text: item.subtitle,
                      textSize: 20,
                      fontWeightIndex: FontSelectionData.semiBoldFontFamily,
                      textColor: AppColors.whiteColor,
                    ),
                    const SizedBox(height: 40),
                    OnboardingFooterWidget(
                      currentPage: currentPage,
                      totalPages: onboardingList.length,
                      controller: controller,
                      onNext: onNext,
                      text: AppLanguageKeys.startNow,
                    ),
                  ],
                ),
              ),
            ],
          );
        },

    );
  }
}


