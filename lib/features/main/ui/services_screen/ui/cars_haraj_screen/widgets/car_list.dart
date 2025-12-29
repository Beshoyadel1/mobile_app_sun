import 'package:flutter/material.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../ui/car_details_screen.dart';
import 'car_auction_widget.dart';

class CarList extends StatelessWidget {
 CarList({super.key});
  final cars = AppData.cars;
  @override
  Widget build(BuildContext context) {
    return    Column(
      children: cars.map((car) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: SizedBox(
            width: 387,
            height: 300,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    NavigateToPageWidget(CarDetailsScreen(car: car, selectedIndex: 0,)));
              },
              child: CarAuctionWidget(
                item: car,
                heightImage: 250,
              ),
            ),
          ),
        );
      }).toList(),
    );

  }
}
