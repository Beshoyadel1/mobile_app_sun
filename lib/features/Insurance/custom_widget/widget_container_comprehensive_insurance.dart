import 'package:flutter/cupertino.dart';
import '../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../features/Insurance/identity_verification/identity_verification.dart';
import '../../../../features/Insurance/insurance_offers/ui/screens/container_best_offer.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';

class WidgetContainerComprehensiveInsurance extends StatelessWidget {
  final String imageSrc;
  final String nameCompany;
  final bool isSelected;

  const WidgetContainerComprehensiveInsurance({
    super.key,
    required this.imageSrc,
    required this.nameCompany,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.scaffoldColor,
        borderRadius: BorderRadius.circular(10),
        border: isSelected
            ? Border.all(color: AppColors.orangeColor, width: 1)
            : null,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Image.asset(imageSrc, width: 22),
                const SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 5,
                    children: [
                      TextInAppWidget(
                        text: nameCompany,
                        textSize: 12,
                        fontWeightIndex: FontSelectionData.regularFontFamily,
                        textColor: AppColors.darkColor,
                      ),
                      TextInAppWidget(
                        text: AppLanguageKeys.comprehensiveInsurance,
                        textSize: 11,
                        fontWeightIndex: FontSelectionData.regularFontFamily,
                        textColor: AppColors.orangeColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (isSelected)
                    Column(
                      spacing: 10,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              NavigateToPageWidget(IdentityVerification()),
                            );
                          },
                          child: ContainerBestOffer(),
                        ),
                      ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: TextInAppWidget(
                          text: '900',
                          textSize: 15,
                          fontWeightIndex: FontSelectionData.mediumFontFamily,
                          textColor: AppColors.orangeColor,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Image.asset(AppImageKeys.coin, width: 15),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextInAppWidget(
                    text: AppLanguageKeys.annualPayment,
                    textSize: 12,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor: AppColors.greyColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
