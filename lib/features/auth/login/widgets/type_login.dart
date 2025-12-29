import 'package:flutter/cupertino.dart';

import '../../../../core/constants.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/pages_widgets/button_widget.dart';
import '../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../ui/details_login_screen.dart';

class TypeLogin extends StatelessWidget {
  const TypeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: [
        SizedBox(
          width: 160,
          child: ButtonWidget(
            heightContainer: 57,
            text: AppLanguageKeys.registerAsAnIndividual,
            fontWeightIndex: FontSelectionData.mediumFontFamily,
            textColor: AppColors.whiteColor,
            buttonColor: AppColors.orangeColor,
            textSize: 18,
            isTextCenter: true,
            borderRadius: 50,
            onTap: () {
              AppConstants.currentLoginType = LoginType.individual;
              Navigator.of(context).push(
                NavigateToPageWidget(const DetailsLoginScreen()),
              );
            },
          ),
        ),
        SizedBox(
          width: 160,
          child: ButtonWidget(
            heightContainer: 57,
            text: AppLanguageKeys.registerAsCompanies,
            textColor: AppColors.whiteColor,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            buttonColor: AppColors.secondaryColor,
            textSize: 18,
            isTextCenter: true,
            borderRadius: 50,
            onTap: () {
              AppConstants.currentLoginType = LoginType.company;
              Navigator.of(context).push(
                NavigateToPageWidget(const DetailsLoginScreen()),
              );
            },
          ),
        ),
      ],
    );

  }
}
