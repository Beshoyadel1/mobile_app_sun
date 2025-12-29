import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/pages_widgets/button_widget.dart';


class EndTwoButtonScreen extends StatelessWidget {
  final void Function()? onTapTransfer,onTapDelete;
  const EndTwoButtonScreen({
    super.key,
    this.onTapDelete,
    this.onTapTransfer
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            ButtonWidget(
              isIconInEnd: false,
              text:AppLanguageKeys.transferCar,
              textColor: AppColors.whiteColor,
              buttonColor: AppColors.darkColor34,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              heightContainer: 40,
              widthContainer:120,
              borderRadius: 30,
             // iconData: Icons.add,
              onTap: onTapTransfer,
            ),
            ButtonWidget(
              isIconInEnd: false,
              text:AppLanguageKeys.deleteCar,
              textColor: AppColors.whiteColor,
              buttonColor: AppColors.redColor,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              heightContainer: 40,
              widthContainer:120,
              borderRadius: 30,
              onTap: onTapDelete,
            ),
          ],
        ),
      ],
    );
  }
}
