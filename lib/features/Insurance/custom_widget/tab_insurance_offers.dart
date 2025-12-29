import 'package:flutter/cupertino.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';

class tabInsuranceOffers extends StatelessWidget {
  final bool isSelected;
  final String evenname;

  tabInsuranceOffers({required this.isSelected, required this.evenname});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal:10),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.orangeColor : AppColors.whiteColor,
        borderRadius: BorderRadius.circular(25),
        border: isSelected?null:Border.all(
          color: AppColors.greyColor.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: TextInAppWidget(
        text:evenname,
        textSize: 12,
        fontWeightIndex: FontSelectionData.regularFontFamily,
        textColor: isSelected?AppColors.whiteColor:AppColors.greyColor,
        maxLines: 1,
      ),
    );
  }
}
