import 'package:flutter/material.dart';


import '../../../../../core/AppDataList.dart';
import '../../../../../core/language/language.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../auth/login/widgets/register_widget.dart';
import '../../../../car_ownership_transfer_request/first_screen_car_ownership_transfer_request/first_screen_car_ownership_transfer_request.dart';
import '../../services_screen/ui/all_spare_part_services_screen/widgets/spare_part_card.dart';
import '../../services_screen/ui/cars_haraj_screen/ui/cars_haraj_screen.dart';

class SparePartsList extends StatelessWidget {
  const SparePartsList({super.key});

  @override
  Widget build(BuildContext context) {
    final  spareParts= AppData.spareParts;
    return  Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextActionRow(
                  mainTextWidget: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:AppLocalizations.of(context).translate(AppLanguageKeys.sparePartsForCar),
                          style: TextStyle(
                            color: AppColors.darkGreyColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: AppLocalizations.of(context).translate(AppLanguageKeys.nissanCVR),
                          style: TextStyle(
                            color: AppColors.seaBlueColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                  actionText:AppLocalizations.of(context).translate(AppLanguageKeys.viewAll),

                  onPressed: () {
                    Navigator.of(context).push(
                      NavigateToPageWidget(  FirstScreenCarOwnershipTransferRequest()));
                  },
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),


              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: spareParts.map((part) {
                  return SizedBox(
                    height:161,
                      width: 120,
                      child: SparePartCard(part: part));
                }).toList(),
              )

            ],



    );
  }
}
