import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/Insurance/check_your_national_access_account/ui/screens/container_content_part_change.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/Insurance/check_your_national_access_account/ui/screens/image_label_divider_container_check_your_national_access_account.dart';

class ContainerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 500,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.scaffoldColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.darkColor.withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            ImageLabelDividerContainerCheckYourNationalAccessAccount(),
            ContainerContentPartChange(),
          ],
        ),
      ),
    );
  }
}
