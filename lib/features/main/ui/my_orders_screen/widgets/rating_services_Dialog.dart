import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../logic/rating_cubit.dart';
import '../ui/rating_screen.dart';
import 'rating_widget.dart';

class RatingServicesDialog extends StatelessWidget {
  const RatingServicesDialog({super.key, this.textController});
  final TextEditingController? textController ;
  @override
  Widget build(BuildContext context) {
    return  Dialog(
        backgroundColor:AppColors.scaffoldColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: SizedBox(
          height: 618,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                SizedBox(height: 52,),
                Center(
                  child: TextInAppWidget(text: AppLanguageKeys.rateService,
                    textSize: 14,
                    textColor: AppColors.darkColor,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                  ),
                ),
                CustomContainer(isSelected: false, onTap: () {  },
                  borderRadius: BorderRadius.circular(14),
                  containerColor: AppColors.whiteColor,
                  border: Border(),
                  typeWidget:BlocProvider(
                    create: (_) => RatingCubit(),
                    child: const RatingWidget(),
                  )

                ),
                SizedBox(height: 20,),
                TextInAppWidget(text: AppLanguageKeys.writeComment,
                  textSize: 14,
                  textColor: AppColors.darkColor,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                ),
                TextFormFieldWidget(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                  isColumn: false,
                  textFormController: textController ?? TextEditingController(),
                  textSize: 14,
                  textColor: AppColors.darkGreyColor,
                  fillColor: AppColors.whiteColor,
                  borderColor: AppColors.lightGreyColor,
                  textFormHeight: 113,
                  fontWeightIndex: FontSelectionData.semiBoldFontFamily,
                  isValidator: true,
                  focusedBorderRadius: BorderRadius.circular(14),
                  enabledBorderRadius: BorderRadius.circular(14),
                ),
                SizedBox(height: 32,),
                ButtonWidget(
                  borderRadius: 24,
                  borderColor: AppColors.orangeColor,
                  text: AppLanguageKeys.addComment,
                  textColor: AppColors.whiteColor,
                  fontWeightIndex:
                  FontSelectionData.regularFontFamily,
                  buttonColor:  AppColors.orangeColor,
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        NavigateToPageWidget(const RatingScreen()));
                   },
                  textSize: 14,
                  isTextCenter: true,
                ),

              ],
            ),
          ),
        ));
  }
}
