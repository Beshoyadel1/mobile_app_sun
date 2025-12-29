import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';

class ContainerListContainerTextNotificationsWidget extends StatelessWidget {
  final String imagePath;
  const ContainerListContainerTextNotificationsWidget({super.key,required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.pinkColor.withOpacity(0.8),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
          child: Image.asset(imagePath)
      ),
    );
  }
}
