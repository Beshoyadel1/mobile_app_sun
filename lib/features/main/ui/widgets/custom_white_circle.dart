import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';



class CustomWhiteCircle extends StatelessWidget {
  const CustomWhiteCircle({super.key, required this.typeWidget});
final Widget typeWidget;
  @override
  Widget build(BuildContext context) {
    return     Container(
      height: 36,
      width: 36,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withAlpha(51),
            blurRadius: 7,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Center(
        child:FittedBox(
          fit: BoxFit.contain,
          child:typeWidget,
          ),
        ),
      );

  }
}