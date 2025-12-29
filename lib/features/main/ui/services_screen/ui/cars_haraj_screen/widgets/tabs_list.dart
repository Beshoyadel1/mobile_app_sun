import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/setup_git_it.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../logic/basic_services_cubit/basic_services_cubit.dart';
import '../../../../../logic/category_cubit.dart';
import '../../../../home_screen/widgets/filter_dialog.dart';

class TabsList extends StatelessWidget {
  TabsList({super.key});


  @override
  Widget build(BuildContext context) {
    final buttons = [
      {
        "widget": (bool isSelected) => TextInAppWidget(text: AppLanguageKeys.haraj, textSize: 16,
          fontWeightIndex: FontSelectionData.regularFontFamily, textColor: isSelected ? AppColors.whiteColor : AppColors.darkGreyColor,),},

      {
        "widget": (bool isSelected) => TextInAppWidget(text: AppLanguageKeys.auction, textSize: 16,
          fontWeightIndex: FontSelectionData.regularFontFamily, textColor: isSelected ? AppColors.whiteColor : AppColors.darkGreyColor,),},
      {
        "widget": (bool isSelected) => Row(
          spacing: 10,
          children: [
            Image.asset(AppImageKeys.searchOrangeIcon, height: 21, width: 21),
            TextInAppWidget(text: AppLanguageKeys.search, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: isSelected ? AppColors.whiteColor : AppColors.darkGreyColor,),],),},
      {
        "widget": (bool isSelected) => Row(
          spacing: 10,
          children: [
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return BlocProvider(
                      create: (_) => getIt<BasicServicesCubit>(),
                      child: const FilterDialog(),
                    );
                  },
                );
              },
              child: Image.asset(AppImageKeys.filterOrangeIcon,
                  height: 21, width: 21),
            ),
            TextInAppWidget(text: AppLanguageKeys.filter, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: isSelected ? AppColors.whiteColor : AppColors.darkGreyColor,),
          ],
        ),
      },
    ];

    return    BlocBuilder<CategoryCubit, int>(
      builder: (context, selected) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 15,
            children: List.generate(buttons.length, (index) {
              final isSelected = selected == index;
              return CustomContainer(
                isSelected: isSelected,
                containerColor: isSelected
                    ? AppColors.seaBlueColor
                    : AppColors.whiteColor,
                border: Border.all(
                  color: isSelected
                      ? AppColors.whiteColor
                      : AppColors.lightGreyColor,
                ),
                onTap: () {
                  context.read<CategoryCubit>().selectCategory(index);
                },
                typeWidget: buttons[index]["widget"]!(isSelected),
              );
            }),
          ),
        );
      },
    );
  }
}
