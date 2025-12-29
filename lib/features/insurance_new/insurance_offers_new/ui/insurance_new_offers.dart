import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/Insurance/custom_widget/appbar_insurance_offers.dart';
import '../../../../../features/insurance_new/insurance_offers_new/ui/screens/default_tab_controller_insurance_new_offers.dart';
import '../../../../../features/insurance_new/insurance_offers_new/ui/screens/first_row_title_insurance_new_offers.dart';
import '../../../../../features/insurance_new/insurance_offers_new/ui/screens/second_row_insurance_new_offers.dart';
import '../../../../../core/theming/colors.dart';

class InsuranceNewOffers extends StatefulWidget {
  const InsuranceNewOffers({super.key});

  @override
  State<InsuranceNewOffers> createState() => _InsuranceOffersState();
}

class _InsuranceOffersState extends State<InsuranceNewOffers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBarInsuranceOffers(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: AlignmentDirectional.center,
            child: SizedBox(
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 15,
                children: const [
                  FirstRowTitleInsuranceNewOffers(),
                  SecondRowInsuranceNewOffers(),
                  Expanded(
                    child: DefaultTabControllerInsuranceNewOffers(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}