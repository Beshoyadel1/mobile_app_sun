import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/change_car/add_information_car_change_car/ui/screens/first_part_list_car_in_add_information_car_change_car.dart';
import '../../../../../features/change_car/add_information_car_change_car/ui/screens/second_part_list_car_in_add_information_car_change_car.dart';

class ListDataFirstScreenCarOwnershipTransferRequest extends StatelessWidget {
  const ListDataFirstScreenCarOwnershipTransferRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        FirstPartListCarInAddInformationCarChangeCar(),
        SecondPartListCarInAddInformationCarChangeCar()
      ],
    );
  }
}
