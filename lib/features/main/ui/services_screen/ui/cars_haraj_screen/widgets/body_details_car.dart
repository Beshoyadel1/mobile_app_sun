import 'package:flutter/material.dart';
import '../../../../../models/car_auction_item_model.dart';
import 'comments_widget.dart';
import 'list_images_car.dart';
import 'more_details_car_model.dart';
import 'seller_widget.dart';

class BodyDetailsCar extends StatelessWidget {
  const BodyDetailsCar({super.key, required this.car});
  final CarAuctionItemModel car;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        spacing: 28,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListImagesCar(car: car),
          MoreDetailsCarModel(car: car),
         const SellerWidget(),
         const CommentsWidget(),
         const SizedBox(height: 110),
        ],
      ),
    );
  }
}
