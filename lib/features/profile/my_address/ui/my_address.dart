import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../features/profile/credit_cards/ui/credit_cards.dart';
import '../../../../features/profile/custom_widget/end_button_profile_widget.dart';
import '../../../../features/profile/my_address/ui/screens/part_two_column_my_address.dart';
import '../../../../features/profile/my_address/ui/screens/part_one_column_my_address.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/language/language_constant.dart';

class MyAddress extends StatelessWidget {
  const MyAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: const AppbarProfileWidget(
        title: AppLanguageKeys.myAddress,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          PartOneColumnMyAddress(),
                          PartTwoColumnMyAddress(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              EndButtonProfileWidget(
                textButton: AppLanguageKeys.addAddress,
                onTap: (){
                  Navigator.of(context).push(
                    NavigateToPageWidget(CreditCards()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
