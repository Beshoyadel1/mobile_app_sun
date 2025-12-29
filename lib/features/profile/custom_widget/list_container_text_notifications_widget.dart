import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/profile/custom_widget/column_list_container_text_notifications_widget.dart';
import '../../../../../features/profile/custom_widget/container_list_container_text_notifications_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class ListContainerTextNotificationsWidget extends StatelessWidget {
  final String imagePath,firstText,secondText,endTitle;
  final void Function()? onTap;
  const ListContainerTextNotificationsWidget({
    super.key,
    required this.secondText,
    required this.firstText,
    required this.imagePath,
    required this.endTitle,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 10,
            children: [
              ContainerListContainerTextNotificationsWidget(imagePath: imagePath,),
              ColumnListContainerTextNotificationsWidget(
                  firstText: firstText,
                  secondText: secondText,
              )
            ],
          ),
          TextInAppWidget(
            text: endTitle,
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.greyColor,
          ),
        ],
      ),
    );
  }
}
