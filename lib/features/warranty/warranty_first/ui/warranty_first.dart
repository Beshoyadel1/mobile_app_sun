import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/warranty/warranty_first/ui/screens/container_design_warranty_first.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';

class WarrantyFirst extends StatelessWidget {
  const WarrantyFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title: AppLanguageKeys.sunWarranty,),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Align(
            alignment: AlignmentDirectional.center,
            child: SingleChildScrollView(
              child: SizedBox(
                width: 500,
                child: Column(
                  children: [
                    ContainerDesignWarrantyFirst()
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
