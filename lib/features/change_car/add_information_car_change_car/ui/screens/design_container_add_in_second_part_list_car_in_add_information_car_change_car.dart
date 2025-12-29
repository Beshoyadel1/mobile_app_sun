import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';

class DesignContainerAddInSecondPartListCarInAddInformationCarChangeCar extends StatelessWidget {
  final void Function()? onPressed;
  const DesignContainerAddInSecondPartListCarInAddInformationCarChangeCar({
    super.key,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color:AppColors.pinkColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(Icons.add,color: AppColors.orangeColor,),
        onPressed: onPressed,
    )
    );
  }
}
