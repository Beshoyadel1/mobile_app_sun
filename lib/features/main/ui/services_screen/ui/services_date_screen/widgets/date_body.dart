import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_state.dart';


class DateBody extends StatelessWidget {
  const DateBody({super.key});

  @override
  Widget build(BuildContext context) {

    return  BlocBuilder<ServiceCenterDetailsCubit, ServiceCenterDetailsState>(
        builder: (context, state) {
          int selectedDayIndex = -1;
          int selectedTimeIndex = -1;

          if (state is ServiceDateState) {
            selectedDayIndex = state.selectedDayIndex;
            selectedTimeIndex = state.selectedTimeIndex;
          }


     return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        TextInAppWidget(text:AppLanguageKeys.confirmBookingTime, textSize: 16, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
        const SizedBox(height: 14),
        TextInAppWidget(text: AppLanguageKeys.selectDay, textSize: 16, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
        const SizedBox(height: 8),
        SizedBox(
          height: 72,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: days.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final isSelected = selectedDayIndex == index;
              return ButtonWidget(
                heightContainer: 72,
                widthContainer: 78,
                borderRadius: 24,
                borderColor: isSelected
                    ? AppColors.orangeColor
                    : AppColors.lightGreyColor,
                text: days[index],
                textColor: isSelected
                    ? AppColors.whiteColor
                    : AppColors.greyColor,
                fontWeightIndex:
                FontSelectionData.regularFontFamily,
                buttonColor: isSelected
                    ? AppColors.orangeColor
                    : AppColors.whiteColor,
                onTap: () {
                  context.read<ServiceCenterDetailsCubit>().selectDay(index);
                },
                textSize: 14,
                isTextCenter: true,
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        TextInAppWidget(text: AppLanguageKeys.selectHour, textSize: 16, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
        const SizedBox(height: 8),
        SizedBox(
          height: 36,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: times.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final isSelected = selectedTimeIndex == index;
              return ButtonWidget(
                heightContainer: 32,
                widthContainer: 79,
                borderRadius: 24,
                borderColor: isSelected
                    ? AppColors.orangeColor
                    : AppColors.lightGreyColor,
                text: times[index],
                textColor: isSelected
                    ? AppColors.whiteColor
                    : AppColors.greyColor,
                fontWeightIndex:
                FontSelectionData.regularFontFamily,
                buttonColor: isSelected
                    ? AppColors.orangeColor
                    : AppColors.whiteColor,
                onTap: () {
                  context.read<ServiceCenterDetailsCubit>().selectTime(index);
                },
                textSize: 14,
                isTextCenter: true,
              );
            },
          ),
        ),
      ],
    );
          }
        );
      }

  }



final List<String> days = const [
  'السبت\n1 يناير',
  'الأحد\n2 يناير',
  'الاثنين\n3 يناير',
  'الثلاثاء\n4 يناير',
  'الاربعاء\n4 يناير',
  'الخميس\n4 يناير',
];

final List<String> times = const [
  '1:00 م',
  '2:00 م',
  '3:00 م',
  '4:00 م',
  '5:00 م',
  '6:00 م',
];

