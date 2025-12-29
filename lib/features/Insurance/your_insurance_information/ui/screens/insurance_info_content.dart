import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../features/Insurance/your_insurance_information/logic/your_insurance_info_cubit.dart';
import '../../../../../features/Insurance/your_insurance_information/ui/screens/data_your_insurance_information.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/language/language_constant.dart';

class InsuranceInfoContent extends StatelessWidget {
  const InsuranceInfoContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DataYourInsuranceInformation(),
        const SizedBox(height: 20),
        ButtonWidget(
          text: AppLanguageKeys.linkInsuranceWithSanad,
          textColor: AppColors.whiteColor,
          buttonColor: AppColors.orangeColor,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          heightContainer: 50,
          widthContainer: 300,
          borderRadius: 20,
          onTap: () {
            context.read<YourInsuranceInfoCubit>().linkInsurance();
          },
        ),
      ],
    );
  }
}
