import 'package:flutter/material.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../auth/login/widgets/register_widget.dart';
import '../../all_spare_part_services_screen/widgets/spare_part_card.dart';

class SparePartsAndProducts extends StatelessWidget {
  SparePartsAndProducts({super.key});
  final  spareParts= AppData.spareParts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextActionRow(
          mainText: AppLanguageKeys.partsAndProducts,
          mainTextColor: AppColors.darkGreyColor,
          actionText:  AppLanguageKeys.viewAll,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          decorationText: TextDecoration.underline,
          decorationTextColor: AppColors.orangeColor,
          onPressed: () {},
        ),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: spareParts.take(3).map((part) {
            return SizedBox(
              height: 161,
              width: 120,
              child: SparePartCard(part: part),
            );
          }).toList(),
        )

      ],
    );
  }
}
