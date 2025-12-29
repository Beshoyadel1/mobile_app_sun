import 'package:flutter/material.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/font_selection.dart';
import 'package:sun_system_app/features/welcome/ui/welcome_favorite.dart';

import '../../../core/language/language.dart';
import '../../../core/language/language_constant.dart';
import '../../../core/pages_widgets/button_widget.dart';
import '../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../core/theming/assets.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/fonts.dart';
import '../../../core/theming/text_styles.dart';
import '../../main/ui/main_screen.dart';
import '../widgets/appbar_profile.dart';
import '../widgets/sun_warranty_features.dart';

class WelcomeHomePage extends StatelessWidget {
  const WelcomeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarProfile(
        pageToNavigate: const WelcomeFavorite(),
        image: AppImageKeys.profileImage,
        imageWidth: 45,
        imageHeight: 45,
      ),

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Flexible(
            child: SizedBox(
            width: 400,
              child: Column(

                children: [
                    const SizedBox(height: 52),
                   RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: AppFonts.readexProFontFamily,
                          fontWeight: FontWeight.w600,
                          color: AppColors.darkColor,
                        ),
                        children: [
                          TextSpan(text: "${AppLocalizations.of(context).translate(AppLanguageKeys.congratulations)} ",),
                          TextSpan(
                            text: AppLocalizations.of(context).translate(AppLanguageKeys.gift),
                            style: TextStyle(color: AppColors.orangeColor,),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 62),
                    Image.asset(
                      AppImageKeys.steeringWheel,
                      height: 145,
                      width: 145,
                    ),
                    const SizedBox(height: 32),
                    TextInAppWidget(
                      text: AppLanguageKeys.sunWarranty,
                      textSize: 26,
                      fontWeightIndex: FontSelectionData.mediumFontFamily,
                      textColor: AppColors.darkorangeColor,
                    ),
                    const SizedBox(height: 12),
                    TextInAppWidget(
                      text: AppLanguageKeys.fiveYearsWarranty,
                      textSize: 17,
                      fontWeightIndex: FontSelectionData.mediumFontFamily,
                      textColor: AppColors.darkColor,
                    ),
                    const SizedBox(height: 62),
                    SunWarrantyFeatures(),
                    const SizedBox(height: 42),
                    ButtonWidget(
                      text: AppLanguageKeys.showServicesNow,
                      buttonColor: AppColors.orangeColor,
                      widthContainer: 385,
                      heightContainer: 60,
                      borderRadius: 50,
                      textSize: 18,
                      onTap: () {
                        Navigator.of(
                          context,
                        ).pushReplacement(NavigateToPageWidget(const MainScreen()));
                      },
                    ),
                  ],
                )))],
              )])
          ),
        ),
      ),
    );
  }
}
