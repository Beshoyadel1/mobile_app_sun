import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../features/order_list/Rating/ui/Rating.dart';

class ColumnTwoTextInInLastRowContainerMobileServiceInServiceRequest extends StatelessWidget {
  const ColumnTwoTextInInLastRowContainerMobileServiceInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showDialog(
          context: context,
          builder: (context) =>  RatingDialogWidget(),
        );
      },
      child: Container(
        padding: EdgeInsetsGeometry.all(10),
        decoration: BoxDecoration(
          color: AppColors.orangeColor,
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        child: TextInAppWidget(
          text: AppLanguageKeys.serviceRating,
          textSize: 10,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.whiteColor,
        ),
      ),
    );
  }
}
