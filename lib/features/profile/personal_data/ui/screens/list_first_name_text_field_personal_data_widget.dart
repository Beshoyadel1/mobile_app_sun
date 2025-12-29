import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../features/profile/custom_widget/first_name_textfield_personal_data_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../main/ui/home_screen/widgets/file_pdf.dart';

class ListFirstNameTextFieldPersonalDataWidget extends StatelessWidget {
  const ListFirstNameTextFieldPersonalDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 25,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //

        const FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.username,
          hint:'عمرو محي الدين',
        ),
        if(!AppConstants.isIndividual)
          const FirstNameTextfieldPersonalDataWidget(
          name: "رقم الهاتف",
          hint:'0543322',
        ),
        const FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.email,
          hint:'amr@gmail,com',
        ),
        if(AppConstants.isIndividual)
          const FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.password,
          hint:'***',
        ),
        if(AppConstants.isIndividual)    const FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.nationality,
          hint:'مصري',
        ),
        if(AppConstants.isIndividual)  const FirstNameTextfieldPersonalDataWidget(
          isLanguage: true,
          name:AppLanguageKeys.language,
        ),
        if(!AppConstants.isIndividual)
          Row(
           spacing: 100,
            children: [
          Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextInAppWidget(text: 'هوية السائق',textSize: 16,fontWeightIndex: FontSelectionData.regularFontFamily,textColor: AppColors.blackColor44,),
              FilePdf(
                fileName: 'ID.PDF',
              )
            ],
          ),
              Column(
                spacing:10 ,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextInAppWidget(text: 'صورة السائق',textSize: 16,fontWeightIndex: FontSelectionData.regularFontFamily,textColor: AppColors.blackColor44,),
                  FilePdf(
                    fileName: 'photo.JPJ',
                  )
                ],
              )
            ],
          ),

      ],
    );
  }
}
