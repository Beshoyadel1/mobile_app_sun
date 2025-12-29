import 'package:flutter/cupertino.dart';
import '../../../../features/car_batteries/choose_time_car_batteries/screens/choose_hour_in_list_data_choose_time_car_batteries.dart';
import '../../../../features/car_batteries/choose_time_car_batteries/screens/choose_day_in_list_data_choose_time_car_batteries.dart';
import '../../../../features/car_batteries/choose_time_car_batteries/screens/first_title_in_list_data_choose_time_car_batteries.dart';

class ListDataChooseTimeCarBatteries extends StatelessWidget {
  const ListDataChooseTimeCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FirstTitleInListDataChooseTimeCarBatteries(),
        ChooseDayInListDataChooseTimeCarBatteries(),
        ChooseHourInListDataChooseTimeCarBatteries()
      ],
    );
  }
}
