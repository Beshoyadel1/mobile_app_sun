import 'package:flutter/material.dart';
import '../../../../../features/warranty/warranty_subscription/ui/screens/second_part_warranty_subscription.dart';
import '../../../../../features/warranty/warranty_subscription/ui/screens/first_part_warranty_subscription.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';

class WarrantySubscription extends StatelessWidget {
  const WarrantySubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title: AppLanguageKeys.sunWarranty),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: AlignmentDirectional.center,
            child: SizedBox(
              width: 500,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: FirstPartWarrantySubscription(),
                    ),
                  ),
                  SecondPartWarrantySubscription(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
