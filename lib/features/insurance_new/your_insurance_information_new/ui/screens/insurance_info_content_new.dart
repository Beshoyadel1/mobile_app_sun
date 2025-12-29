import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/insurance_new/your_insurance_information_new/logic/your_insurance_info_new_cubit.dart';
import '../../../../../features/insurance_new/your_insurance_information_new/ui/screens/data_your_insurance_information_new.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/language/language_constant.dart';

class InsuranceInfoContentNew extends StatelessWidget {
  const InsuranceInfoContentNew();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DataYourInsuranceInformationNew(),
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
            context.read<YourInsuranceInfoNewCubit>().linkInsurance();
          },
        ),
      ],
    );
  }
}
