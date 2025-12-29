import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/pages_widgets/button_widget.dart';

class LastButtonOrangeWithoutIcon extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const LastButtonOrangeWithoutIcon({
    super.key,
    this.onTap,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      isIconInEnd: false,
      text:text,
      textColor: AppColors.whiteColor,
      buttonColor: AppColors.orangeColor,
      textSize: 13,
      fontWeightIndex: FontSelectionData.regularFontFamily,
      heightContainer: 40,
      widthContainer:250,
      borderRadius: 30,
      onTap: onTap,
    );
  }
}
