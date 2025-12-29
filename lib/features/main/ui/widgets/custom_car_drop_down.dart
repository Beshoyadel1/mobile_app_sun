import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../welcome/models/car_model.dart';
import '../../../welcome/widgets/car_name_list.dart';

class CustomCarDropdown extends StatefulWidget {
  const CustomCarDropdown({super.key, this.textColor, this.iconColor});
 final Color? textColor;
 final Color? iconColor;
  @override
  State<CustomCarDropdown> createState() => _CustomCarDropdownState();
}
class _CustomCarDropdownState extends State<CustomCarDropdown> {
  CarModel? selectedCar;


  @override
  void initState() {
    super.initState();
    selectedCar = CarNameList.first;
  }
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child:DropdownButton<CarModel>(
        value: selectedCar,
        dropdownColor: AppColors.whiteColor,
        icon: const SizedBox(),
        selectedItemBuilder: (context) {
          return CarNameList.map((car) {
            return Row(
              children: [
                Image.asset(car.Image, width: 26, height: 29),
                const SizedBox(width: 8),
                TextInAppWidget(
                  text: car.name,
                  textSize: 14,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor: widget.textColor??AppColors.whiteColor,
                ),
                const SizedBox(width: 4),
                Icon(Icons.keyboard_arrow_down, color: widget.iconColor??AppColors.whiteColor),
              ],
            );
          }).toList();
        },
        items: CarNameList.map((car) {
          return DropdownMenuItem<CarModel>(
            value: car,
            child: Row(
              children: [
                Image.asset(car.Image, width: 26, height: 29),
                const SizedBox(width: 8),
                Text(car.name),
              ],
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            selectedCar = value;
          });
        },
      )

    );
  }
}

