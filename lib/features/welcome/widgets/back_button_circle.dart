

import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';

class BackButtonCircle extends StatelessWidget {
  const BackButtonCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration:  BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.darkColor.withAlpha(51),
                blurRadius: 1,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: const Center(
            child:FittedBox(
              fit: BoxFit.contain,
              child: Icon(
                size: 16,
                Icons.arrow_back_ios_outlined,
                color: AppColors.darkColor,

              ),
            ),
          ),
        ),
      ],
    )
    ;
  }
}
