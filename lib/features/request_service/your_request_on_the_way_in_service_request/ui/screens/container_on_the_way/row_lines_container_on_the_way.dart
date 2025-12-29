import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/theming/colors.dart';

class RowLinesContainerOnTheWay extends StatelessWidget {
  const RowLinesContainerOnTheWay ({super.key});

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
            color: AppColors.redColor.withOpacity(0.24),
            thickness: 3,
            radius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.redColor.withOpacity(0.24),
            thickness: 3,
            radius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ],
    );
  }
}
