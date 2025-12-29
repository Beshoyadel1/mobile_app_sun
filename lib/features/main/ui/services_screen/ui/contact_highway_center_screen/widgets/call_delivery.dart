import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';


class CallPersonWidget extends StatelessWidget {
  const CallPersonWidget({super.key, this.name, this.image});
final String? name;
final AssetImage? image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 24, vertical: 50),
        child: Column(
          spacing: 30,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: image??AssetImage(AppImageKeys.serviceCenters2)
            ),
           TextInAppWidget(
              text: name??AppLanguageKeys.highwayServiceCenters,
              textSize: 20,
              textColor: AppColors.darkColor,
              fontWeightIndex: FontSelectionData.mediumFontFamily,
            ),
            Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImageKeys.muteIcon,
                  width: 55,
                  height: 55,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 48.0),
                  child: Image.asset(
                    AppImageKeys.callPhoneIcon,
                    width: 130,
                    height: 130,
                  ),
                ),
                Image.asset(
                  AppImageKeys.speakerIcon,
                  width: 55,
                  height: 55,
                ),

              ], ),
          ],
        ),
      ),
    );
  }
}
