import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../models/order_model.dart';

class OrderCard extends StatelessWidget {
  final OrderModel order;

  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 10,
            children: [
              CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage(order.image),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  TextInAppWidget(
                    text: order.title,
                    textSize: 10,
                    textColor: AppColors.darkGreyColor,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                  ),
                  TextInAppWidget(
                    text: order.centerName,
                    textSize: 12,
                    textColor: AppColors.darkColor,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 10,
                children: [
                  TextInAppWidget(
                    text: order.orderCode,
                    textSize: 10,
                    textColor: AppColors.darkColor,
                    fontWeightIndex: FontSelectionData.mediumFontFamily,
                  ),
                  TextInAppWidget(
                    text: order.price,
                    textSize: 12,
                    textColor: AppColors.orangeColor,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48.0),
                child: Container(
                  width: 120,
                  height: 28,
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                    color: order.statusColor.withAlpha(50),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Center(
                    child: TextInAppWidget(
                      text: order.status,
                      textSize: 13,
                      textColor: order.statusColor,
                      fontWeightIndex: FontSelectionData.regularFontFamily,
                    ),
                  ),
                ),
              ),
              TextInAppWidget(
                text: order.date,
                textSize: 10,
                textColor: AppColors.darkColor,
                fontWeightIndex: FontSelectionData.mediumFontFamily,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
