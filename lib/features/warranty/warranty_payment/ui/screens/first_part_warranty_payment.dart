import 'package:flutter/cupertino.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/profile/custom_widget/container_list_container_text_notifications_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';

class FirstPartWarrantyPayment extends StatelessWidget {
  const FirstPartWarrantyPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextInAppWidget(
            text: AppLanguageKeys.invoice,
            textSize: 14,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.blackColor44,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              spacing: 10,
              children: [
                ContainerListContainerTextNotificationsWidget(imagePath: AppImageKeys.tax),
                RowNumberCoinWidget(
                    numberText: '400',
                    sizeText: 22,
                    imageSrc: AppImageKeys.coin3
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
