import 'package:flutter/material.dart';

import '../../../../../core/AppDataList.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../auth/login/widgets/register_widget.dart';
import 'service_centers.dart';

class ListServiceCenter extends StatelessWidget {
  const ListServiceCenter({super.key});

  @override
  Widget build(BuildContext context) {
    final  carServiceCenterData= AppData.carServiceCenterData;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
            children: [
              TextActionRow(
                mainText:  AppLanguageKeys.nearServiceCenters,
                mainTextColor: AppColors.darkGreyColor,
                actionText:  AppLanguageKeys.viewAll,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                fontWeightIndex: FontSelectionData.regularFontFamily,
               decorationText: TextDecoration.underline,
                decorationTextColor: AppColors.orangeColor,
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: carServiceCenterData.length,
                  itemBuilder: (context, index) {
                    final item = carServiceCenterData[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: ServiceCenters(
                        image: item.image,
                        bottomTexts: [
                          BottomTextData(
                            text: item.title,
                            color: AppColors.whiteColor,
                            fontSize: 14,
                          ),
                          BottomTextData(
                            text: item.description ?? "",
                            color: AppColors.darkorangeColor,
                            fontSize: 14,
                          ),
                        ],
                        topWidget: Container(
                          width: 48,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.whiteColor.withAlpha(200),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: AppColors.lightOrangeColor,
                                size: 12,
                              ),
                              TextInAppWidget(
                                text: AppLanguageKeys.oneKm,
                                textSize: 10,
                                fontWeightIndex:
                                    FontSelectionData.mediumFontFamily,
                                textColor: AppColors.lightOrangeColor,
                              ),
                            ],
                          ),
                        ),
                        height: 40,
                        topAlignment: Alignment.topRight,
                        widgetContiner: 220,
                        heightContainer: 130,
                      ),
                    );
                  },
                ),
              ),
            ],

      ),
    );
  }
}
