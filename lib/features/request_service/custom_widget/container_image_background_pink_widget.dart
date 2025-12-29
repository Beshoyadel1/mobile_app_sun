import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';

class ContainerImageBackgroundPinkWidget extends StatelessWidget {
  final String imagPath;
  const ContainerImageBackgroundPinkWidget({super.key,required this.imagPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.redColor.withOpacity(0.24),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Image.asset(imagPath,height: 30,),
    );
  }
}
