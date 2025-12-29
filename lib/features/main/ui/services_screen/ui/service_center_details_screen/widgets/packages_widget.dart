import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/widgets/custom_packages.dart';



class PackagesWidget extends StatelessWidget {
  const PackagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15,
      children: [
        TextInAppWidget(text: AppLanguageKeys.packages, textSize: 16, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
        Center(
          child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              CustomPackages(),
              CustomPackages()
            ],
          ),
        )

      ],
    );
  }
}
