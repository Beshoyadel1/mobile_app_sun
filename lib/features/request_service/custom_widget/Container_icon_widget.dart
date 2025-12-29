import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';

class ContainerIconWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String imagPath;
  final void Function()? onTap;
  const ContainerIconWidget({super.key ,this.onPressed, required this.imagPath,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: AppColors.orangeColor,
          shape: BoxShape.circle,
          border: Border.all(
              color: AppColors.transparent
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.darkColor.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Image.asset(imagPath)
        ,
      ),
    );
  }
}
