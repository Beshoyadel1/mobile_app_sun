import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';



class Coupon extends StatefulWidget {
  const Coupon({super.key});

  @override
  State<Coupon> createState() => _CouponState();
}

class _CouponState extends State<Coupon> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      isSelected: false,
      onTap: () {},
      borderRadius: BorderRadius.circular(14),
      border: Border(),
      typeWidget: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(text:AppLanguageKeys.coupon, textSize: 14, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
            Row(
              spacing: 22,
              children: [
                Expanded(
                  child: TextFormFieldWidget(
                    textHeight: 40,
                    isColumn: false,
                    textFormController: searchController,
                    textSize: 14,
                    textColor: AppColors.darkGreyColor,
                    fillColor: AppColors.whiteColor,
                    borderColor: AppColors.lightGreyColor,
                    fontWeightIndex: FontSelectionData.semiBoldFontFamily,
                  ),
                ),
                SizedBox(
                  width: 94,
                  height: 40,
                  child: ButtonWidget(
                    text:AppLanguageKeys.apply,
                    textSize: 16,
                    buttonColor: AppColors.orangeColor,
                    textColor: AppColors.whiteColor,
                    borderRadius: 24,
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
