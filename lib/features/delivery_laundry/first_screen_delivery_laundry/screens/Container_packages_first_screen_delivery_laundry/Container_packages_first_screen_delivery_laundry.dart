import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/delivery_laundry/custom_widget/column_package_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class ContainerPackagesFirstScreenDeliveryLaundry extends StatelessWidget {
  const ContainerPackagesFirstScreenDeliveryLaundry({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsetsGeometry.all(10),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
              color: AppColors.transparent
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.darkColor.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child:Row(
          spacing: 10,
          children: [
            ColumnPackageWidget(packageText: AppLanguageKeys.premiumPackage),
            ColumnPackageWidget(packageText: AppLanguageKeys.goldPackage)
          ],
        )
    );
  }
}
