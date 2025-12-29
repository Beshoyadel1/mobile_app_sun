import 'package:flutter/cupertino.dart';
import '../../../../../features/Insurance/custom_widget/end_button_screen.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/check_your_national_access_account/ui/check_yourn_national_access_account.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class ButtonIdentityVerification extends StatelessWidget {
  const ButtonIdentityVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return EndButtonScreen(
        text: AppLanguageKeys.identityVerification,
        textColor: AppColors.whiteColor,
        buttonColor: AppColors.orangeColor,
        onTap:(){
          Navigator.of(context).push(
            NavigateToPageWidget(CheckYourNationalAccessAccount()),
          );
        }
    );
  }
}
