import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';

class LastButtonInListDataInFirstPageInServiceRequest extends StatelessWidget {
  final void Function()? onTap;
  const LastButtonInListDataInFirstPageInServiceRequest({super.key,this.onTap});

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      text:AppLanguageKeys.createServiceRequest,
      textColor: AppColors.whiteColor,
      buttonColor: AppColors.orangeColor,
      textSize: 12,
      fontWeightIndex: FontSelectionData.regularFontFamily,
      heightContainer: 40,
      widthContainer:300,
      borderRadius: 30,
      onTap: onTap,
    );
  }
}
