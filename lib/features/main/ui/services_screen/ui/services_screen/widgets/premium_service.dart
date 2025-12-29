import 'package:flutter/material.dart';

import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../models/specific_service_model.dart';

class PremiumService extends StatelessWidget {
  const PremiumService({super.key, required this.service});

  final SpecificServiceModel service;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Spacer(flex: 4),
          CircleAvatar(
            radius: 68,
            backgroundColor: AppColors.veryLightOrangeColor
                .withAlpha(60),
            child: Image.asset(service.image!, width: 99, height: 99,),
          ),
          const SizedBox(height: 20),
          TextInAppWidget(text:service.title, textSize: 26, fontWeightIndex: FontSelectionData.mediumFontFamily, textColor: AppColors.darkColor,),
          const Spacer(flex: 2),
          Row(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImageKeys.speakerIcon, width: 48, height: 48,),
              Padding(
                padding:
                const EdgeInsets.only(bottom: 58.0),
                child: Image.asset(AppImageKeys.callPhoneIcon, width: 115, height: 114,),
              ),
              Image.asset(AppImageKeys.muteIcon, width: 48, height: 48,),
            ],
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
