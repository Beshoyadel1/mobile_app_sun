import 'package:flutter/material.dart';

import '../../../../../core/AppDataList.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_list_tile.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

import '../../../../welcome/widgets/custom_text_with_backbutton.dart';
import '../../main_screen.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final profileItemsModel = AppData.profileItems(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:     CustomTextWithBackbutton(
          text:  AppLanguageKeys.myAccount,
          showBackButton: true,
        ),
      ),
      backgroundColor: AppColors.scaffoldColor,
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Flexible(
                child: SizedBox(
                width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                  CustomListTile(
                    leading: CircleAvatar(
                      radius: 32,
                      child: Image.asset(
                        AppImageKeys.profileImage,
                      ),
                    ),
                    title: const TextInAppWidget(text: AppLanguageKeys.amrMohey,textSize: 16,textColor: AppColors.darkColor,fontWeightIndex: FontSelectionData.regularFontFamily,),
                    subtitle: Row(
                      children: [
                        Image.asset(
                          AppImageKeys.nissanOrangeIcon,
                          height: 18,
                          width: 27,
                        ),
                        const TextInAppWidget(text: AppLanguageKeys.myCarNissan,textSize: 14,textColor: AppColors.darkColor,fontWeightIndex: FontSelectionData.regularFontFamily,),
                      ],
                    ),
                  ),

                  ...profileItemsModel.asMap().entries.map((entry) {
                    final index = entry.key;
                    final item = entry.value;

                    return Column(
                      children: [
                        CustomListTile(
                          leading: item.leading,
                          title: item.title,
                          subtitle: item.subtitle,
                          trailing: item.trailing,
                          containerColor: item.containerColor,
                          onTap: item.onTap,
                        ),

                        if(AppConstants.isIndividual)
                        if (index == 5 || (index > 5 && (index - 5) % 5== 0)||(index > 10 && (index - 10) % 4== 0))
                          if(AppConstants.isIndividual)
                          const SizedBox(height: 42),
                        if(!AppConstants.isIndividual)
                          if (index == 3 ||index == 4)
                            if(!AppConstants.isIndividual)
                            const SizedBox(height: 42),
                      ],
                    );
                  }),

                ],
              )))])],
            )),
          ),
        ),
      ),
    );
  }
}
