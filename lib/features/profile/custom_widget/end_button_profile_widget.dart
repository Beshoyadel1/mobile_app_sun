import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';

class EndButtonProfileWidget extends StatelessWidget {
  final String textButton;
  void Function()? onTap;
   EndButtonProfileWidget({super.key,required this.textButton,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ButtonWidget(
          isIconInEnd: false,
          text:textButton,
          textColor: AppColors.whiteColor,
          buttonColor: AppColors.orangeColor,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          heightContainer: 40,
          widthContainer:300,
          borderRadius: 30,
          iconData: Icons.add,
          onTap: onTap,
        ),
      ],
    );
  }
}
