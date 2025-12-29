import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class DesignContainerUploadFileInSecondPartListCarInAddInformationCarChangeCar extends StatelessWidget {
  final String text;
  const DesignContainerUploadFileInSecondPartListCarInAddInformationCarChangeCar({
    super.key,
   required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 5),
        width:150,
        height: 40,
        decoration: BoxDecoration(
          color:AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color:AppColors.darkColor
          ),
        ),
      child: Row(
        spacing: 5,
        children: [
          Image.asset(AppImageKeys.file2,),
          Flexible(
            child: TextInAppWidget(
              text:text,
              textSize: 12,
              fontWeightIndex: FontSelectionData.mediumFontFamily,
              textColor:AppColors.greyColor,
            ),
          ),
        ],
      )
    );
  }
}
