import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../logic/basic_services_cubit/basic_services_cubit.dart';

class ButtonSearchFilter extends StatelessWidget {
  const ButtonSearchFilter({super.key,required this.cubit});
final BasicServicesCubit cubit;
  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: () {
          cubit.applyFilter();
          Navigator.pop(context);
        },
        child: Container(
          width: 341,
          height: 60,
          decoration: BoxDecoration(
            color: AppColors.orangeColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Center(
            child: TextInAppWidget(
              text:  AppLanguageKeys.searchView,
              textSize: 16,
              textColor: AppColors.whiteColor,
              fontWeightIndex: FontSelectionData.regularFontFamily,
            ),
          ),
        ),
      );
  }
}
