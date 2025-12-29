import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/assets.dart';

class FilePdf extends StatelessWidget {
  const FilePdf({super.key, this.fileName});
  final String? fileName;
  @override
  Widget build(BuildContext context) {
     return      SizedBox(
         width: 140,
         child:  CustomContainer(
           isSelected: false, onTap: (){},
           containerColor: AppColors.whiteColor,
           border: Border.all(color: AppColors.darkGreyColor),
           borderRadius: BorderRadius.circular(24),
           typeWidget: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset(AppImageKeys.file,width: 18,height: 18,color: AppColors.darkGreyColor,),
               TextInAppWidget(text:fileName ??'file.PDF',textSize: 12,fontWeightIndex: FontSelectionData.regularFontFamily,textColor: AppColors.darkGreyColor),
             ],
           ),

         )
     );

  }
}
