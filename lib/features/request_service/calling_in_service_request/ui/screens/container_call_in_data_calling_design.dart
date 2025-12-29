import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';

class ContainerCallInDataCallingDesign extends StatelessWidget {
  const ContainerCallInDataCallingDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      width: 60,
      decoration: BoxDecoration(
        color: AppColors.orangeColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.redColor.withOpacity(0.3),
            blurRadius: 8,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Image.asset(AppImageKeys.call2),
    );
  }
}
