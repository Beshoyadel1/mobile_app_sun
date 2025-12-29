import 'package:flutter/material.dart';

import '../../../../../core/AppDataList.dart';
import '../../../../auth/login/widgets/register_widget.dart';
import '../../services_screen/ui/cars_haraj_screen/widgets/car_auction_item_widget.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';

import 'package:sun_system_app/features/main/ui/services_screen/ui/cars_haraj_screen/ui/cars_haraj_screen.dart';


class ListCarAuctionItem extends StatefulWidget {
  const ListCarAuctionItem({super.key});

  @override
  State<ListCarAuctionItem> createState() => _ListCarAuctionItemState();
}

class _ListCarAuctionItemState extends State<ListCarAuctionItem> {
  final cars = AppData.cars;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child:  Column(
            children: [
              const SizedBox(height: 14),
              TextActionRow(
                mainText:  AppLanguageKeys.harajCars,
                mainTextColor: AppColors.darkGreyColor,
                actionText:  AppLanguageKeys.viewAll,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                  onPressed: () {
                    Navigator.of(context).push(
                        NavigateToPageWidget(  CarsHarajScreen()));

                  }

              ),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: cars.map((car) {
                  return SizedBox(
                    child: CarAuctionItemWidget(item: car),
                  );
                }).toList(),
              )

            ],

      ),
    );
  }
}
