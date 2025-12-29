import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/warranty/warranty_first/ui/screens/second_part_page_warranty_first.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';

class SecondPartWarrantySubscription extends StatelessWidget {
  const SecondPartWarrantySubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SecondPartPageWarrantyFirst(),
        ButtonWidget(
            text: AppLanguageKeys.showServicesAtApprovedCenters,
            textColor: AppColors.whiteColor,
            buttonColor: AppColors.orangeColor,
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            heightContainer: 40,
            widthContainer: 300,
            borderRadius: 30,
            onTap: () {}
        ),
      ],
    );
  }
}
