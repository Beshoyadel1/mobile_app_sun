import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/Insurance/custom_widget/row_file_data_your_insurance_information.dart';

class DataYourInsuranceInformation extends StatelessWidget {
  const DataYourInsuranceInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowFileDataYourInsuranceInformation(
          title: AppLanguageKeys.beneficiaryName,
          subTitle: 'عمرو محي الدين',
        ),
        SizedBox(
          height: 20,
        ),
        RowFileDataYourInsuranceInformation(
          title: AppLanguageKeys.insurancePolicyNumber,
          subTitle: '12123214',
        ),
        SizedBox(
          height: 20,
        ),
        RowFileDataYourInsuranceInformation(
          title: AppLanguageKeys.nationalIdNumber,
          subTitle: '12123123',
        ),
        SizedBox(
          height: 20,
        ),
        RowFileDataYourInsuranceInformation(
          title: AppLanguageKeys.carPlateNumber,
          subTitle: '43342',
        ),
        SizedBox(
          height: 20,
        ),
        RowFileDataYourInsuranceInformation(
          title: AppLanguageKeys.chassisNumber,
          subTitle: '7555777',
        ),
        SizedBox(
          height: 20,
        ),
        RowFileDataYourInsuranceInformation(
          title: AppLanguageKeys.insuranceType,
          subTitle: 'تأمين شامل',
        ),
        SizedBox(
          height: 20,
        ),
        RowFileDataYourInsuranceInformation(
          title: AppLanguageKeys.insuranceValue,
          subTitle: '12000 ريال',
        ),
        SizedBox(
          height: 20,
        ),
        RowFileDataYourInsuranceInformation(
          title: AppLanguageKeys.installmentValue,
          subTitle: '1000 ريال',
        ),
      ],
    );
  }
}
