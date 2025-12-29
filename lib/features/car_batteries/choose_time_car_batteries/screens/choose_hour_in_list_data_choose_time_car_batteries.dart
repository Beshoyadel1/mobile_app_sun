import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/car_batteries/choose_time_car_batteries/logic/select_day_in_choose_time_car_batteries_cubit.dart';
import '../../../../../features/car_batteries/choose_time_car_batteries/logic/select_day_in_choose_time_car_batteries_state.dart';
import '../../../../../features/request_service/custom_widget/container_part_finish_service_in_list_data_in_first_page_in_service_request.dart';

class ChooseHourInListDataChooseTimeCarBatteries extends StatefulWidget {
  const ChooseHourInListDataChooseTimeCarBatteries({super.key});

  @override
  State<ChooseHourInListDataChooseTimeCarBatteries> createState() => _ChooseHourInListDataChooseTimeCarBatteriesState();
}

class _ChooseHourInListDataChooseTimeCarBatteriesState extends State<ChooseHourInListDataChooseTimeCarBatteries> {
  late final SelectDayInChooseTimeCarBatteriesCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = SelectDayInChooseTimeCarBatteriesCubit();
    _cubit.selectIndex(0);
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 10,
      children: [
        TextInAppWidget(
          text:AppLanguageKeys.selectDay,
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.darkColor,
        ),
        BlocBuilder<SelectDayInChooseTimeCarBatteriesCubit,
            SelectDayInChooseTimeCarBatteriesState>(
          bloc: _cubit,
          buildWhen: (previous, current) => current is SelectTimeChanged,
          builder: (context, state) {
            int? selectedIndex;
            if (state is SelectTimeChanged) {
              selectedIndex = state.selectedIndex;
            }

            return SizedBox(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      _cubit.selectIndex(index);
                    },
                    child:
                    ContainerPartFinishServiceInListDataInFirstPageInServiceRequest(
                      isHour: true,
                      hour: '1:00 م',
                      isSelected: isSelected,
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
