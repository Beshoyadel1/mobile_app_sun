import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../welcome/widgets/appbar_profile.dart';
import '../../../logic/rating_cubit.dart';

import '../../main_screen.dart';
import '../widgets/rating_widget.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfile(
        image: AppImageKeys.notification,
        showDefaultProfileImage: true,
        title: AppLanguageKeys.reviews,
        showBackButton: true,
        pageToNavigate: MainScreen(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              spacing: 16,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 110.0),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: AppColors.lightGreyColor,
                  ),
                ),
                CustomContainer(
                  containerWidth: 320,
                  isSelected: true,
                  onTap: () {},
                  containerColor: AppColors.whiteColor,
                  border: Border(),
                  typeWidget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextInAppWidget(
                              text: '20/12/2020',
                              textSize: 14,
                              textColor: AppColors.greyColor,
                              fontWeightIndex:
                                  FontSelectionData.mediumFontFamily,
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: AppColors.greyColor,
                              size: 20,
                            ),
                          ],
                        ),

                        TextInAppWidget(
                          text: AppLanguageKeys.goodServiceCenter,
                          textSize: 14,
                          textColor: AppColors.greyColor,
                          fontWeightIndex: FontSelectionData.mediumFontFamily,
                        ),
                        BlocProvider(
                          create: (_) => RatingCubit(),
                          child: const RatingWidget(iconSize: 15),
                        ),

                        TextInAppWidget(
                          text:AppLanguageKeys.excellentService,
                                textSize: 14,
                          textColor: AppColors.greyColor,
                          fontWeightIndex: FontSelectionData.mediumFontFamily,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
