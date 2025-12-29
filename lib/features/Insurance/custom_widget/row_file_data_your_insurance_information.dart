import 'package:flutter/cupertino.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';


class RowFileDataYourInsuranceInformation extends StatelessWidget {
  final String title,subTitle;
  const RowFileDataYourInsuranceInformation({super.key,required this.title,required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImageKeys.file),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text:title,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:AppColors.greyColor,
            ),
            SizedBox(
              height: 5,
            ),
            TextInAppWidget(
              text:subTitle,
              textSize: 14,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:AppColors.darkColor,
            ),
          ],
        )
      ],
    );
  }
}
