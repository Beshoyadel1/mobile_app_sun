import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/theming/colors.dart';

class RowLinesContainerMobileServiceInServiceRequest extends StatelessWidget {
  const RowLinesContainerMobileServiceInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 3,
      children: [
        Expanded(
          child: Divider(
            color: AppColors.orangeColor,
            thickness: 3,
            radius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.orangeColor,
            thickness: 3,
            radius: BorderRadius.all(Radius.circular(20)),

          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.orangeColor,
            thickness: 3,
            radius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.orangeColor,
            thickness: 3,
            radius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ],
    );
  }
}
