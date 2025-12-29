import 'package:flutter/material.dart';

import '../../../../../../../core/theming/colors.dart';
import '../../../../../models/car_auction_item_model.dart';

class ListImagesCar extends StatelessWidget {
  const ListImagesCar({super.key, required this.car});
  final CarAuctionItemModel car;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 44,
                width: 81,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.orangeColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child:  ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(car.image, fit: BoxFit.cover),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
