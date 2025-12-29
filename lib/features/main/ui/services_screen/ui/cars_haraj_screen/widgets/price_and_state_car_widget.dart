import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/logic/select_car_cubit/select_car_cubit.dart';
import 'custom_border_container.dart';

class PriceAndStateCarWidget extends StatelessWidget {
  const PriceAndStateCarWidget({super.key, this.textController});
  final TextEditingController? textController;
  @override
  Widget build(BuildContext context) {
    return            Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 178,
          child: TextFormFieldWidget(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            text: AppLanguageKeys.salePrice,
            textFormController:
            textController ?? TextEditingController(),
            textSize: 14,
            textColor: AppColors.darkGreyColor,
            isColumn: true,
            fillColor: AppColors.whiteColor,
            borderColor: AppColors.lightGreyColor,
            fontWeightIndex: FontSelectionData.semiBoldFontFamily,
            isValidator: true,
            onChanged: (value) {
              context.read<SelectedCarCubit>().changeCar(value);
            },
          ),
        ),
        Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text:AppLanguageKeys.carCondition,
              textSize: 15.7,
              fontWeightIndex:
              FontSelectionData.regularFontFamily,
              textColor: AppColors.darkGreyColor,
            ),

            Row(
            spacing: 10,
              children: [
                CustomBorderContainer(text: AppLanguageKeys.news),
                CustomBorderContainer(text: AppLanguageKeys.used,)

              ],
            ),
          ],
        ),
      ],
    );
  }
}
