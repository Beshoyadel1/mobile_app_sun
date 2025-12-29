import 'package:flutter/cupertino.dart';
import '../../../../../features/warranty/custom_widget/row_list_sun_warranty_features_widget.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/colors.dart';

class SecondPartPageWarrantyFirst extends StatelessWidget {
  const SecondPartPageWarrantyFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        Row(
          children: [
            TextInAppWidget(
              text: AppLanguageKeys.sunWarrantyFeatures,
              textSize: 17,
              fontWeightIndex: FontSelectionData.mediumFontFamily,
              textColor: AppColors.greyColor,
            ),
          ],
        ),
        //
        RowListSunWarrantyFeaturesWidget(text: AppLanguageKeys.warrantyServiceCenters,),
        RowListSunWarrantyFeaturesWidget(text: AppLanguageKeys.warrantyCarsMarket,),
        RowListSunWarrantyFeaturesWidget(text: AppLanguageKeys.warrantyFreeMaintenance,),
      ],
    );
  }
}
