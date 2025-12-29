
import 'package:flutter/material.dart';

import '../../../core/AppDataList.dart';
import '../../../core/pages_widgets/button_widget.dart';
import '../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/fonts.dart';

import '../../main/models/services_center_model.dart';

import '../../main/ui/services_screen/ui/all_spare_part_services_screen/ui/all_spare_part_services_screen.dart';
import '../../main/ui/services_screen/ui/spare_part_details_screen/ui/spare_part_details_screen.dart';
import '../../main/ui/services_screen/ui/all_spare_part_services_screen/widgets/spare_part_card.dart';
import '../../main/ui/widgets/custom_car_drop_down.dart';


class SparePartsUi extends StatefulWidget {

 const SparePartsUi({super.key, required this.centers});
 final List<ServiceCenter> centers;
  @override
  State<SparePartsUi> createState() => _SparePartsUiState();
}

class _SparePartsUiState extends State<SparePartsUi> {
final  spareParts= AppData.spareParts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomCarDropdown(textColor: AppColors.darkColor, iconColor: AppColors.orangeColor),
            Spacer(),
            Icon(Icons.storefront_outlined, color: AppColors.orangeColor,size: 26,),
            ButtonWidget(
              text: 'عرض الكل',
              decorationText:  TextDecoration.underline,
              onTap: (){
                Navigator.of(context).pushReplacement(
                    NavigateToPageWidget(AllSparePartServicesScreen(center: widget.centers.last,)));
              },
              textColor:  AppColors.orangeColor,
              textSize: 14,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              buttonColor: Colors.transparent,
              decorationTextColor: AppColors.orangeColor,
            ),
          ],
        ),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: spareParts.map((part) {
            return SizedBox(
              height: 161,
              width: 120,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      NavigateToPageWidget(SparePartDetailsScreen(part: part, center: widget.centers.last,)));},
                child: SparePartCard(part: part),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
