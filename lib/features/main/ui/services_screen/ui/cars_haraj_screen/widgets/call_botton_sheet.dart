import 'package:flutter/material.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/widgets/botton_sheet.dart';
import '../../chat_screen/ui/chat_screen.dart';
import '../../contact_highway_center_screen/widgets/call_delivery.dart';

class CallBottonSheet extends StatelessWidget {
  const CallBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottonSheet(
      containerHeight: 100,
      buttonWidget:
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          CustomContainer(
            isSelected: true,
            containerColor: AppColors.veryLightOrangeColor.withAlpha(110),
            onTap: (){
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (context) {
                  return CallPersonWidget(
                    name: AppLanguageKeys.sellerName,
                    image: AssetImage(AppImageKeys.profileImage),
                  );
                },
              );
            },
            borderRadius: BorderRadius.circular(55),
            typeWidget: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                spacing: 25,
                children: [
                  Image.asset(AppImageKeys.phoneCallIcon, height: 31, width: 31,color: AppColors.darkColor,),
                  TextInAppWidget(text:AppLanguageKeys.call,textSize: 18,fontWeightIndex: FontSelectionData.regularFontFamily,textColor: AppColors.darkColor,),
                  const SizedBox(width: 10,),
                ],
              ),
            ),

            border: Border(),),
          CustomContainer(
            isSelected: true,
            containerColor: AppColors.seaBlueColor.withAlpha(110),
            onTap: (){
              Navigator.of(context).push(
                  NavigateToPageWidget(const ChatScreen()));
            },
            typeWidget: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                spacing: 10,
                children: [
                  Image.asset(AppImageKeys.messageIcon, height: 31, width: 31,color: AppColors.darkColor,),
                  TextInAppWidget(text:'إرسال رسالة',textSize: 18,fontWeightIndex: FontSelectionData.regularFontFamily,textColor: AppColors.darkColor,),
                ],
              ),
            ),
            borderRadius: BorderRadius.circular(55),
            border: Border(),)

        ],),

      onTap: () {

      },
    );
  }
}
