import 'package:flutter/material.dart';

import '../../../../core/pages_widgets/button_widget.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';


class ClassOfDialogForLoginSignup extends StatelessWidget {
  const ClassOfDialogForLoginSignup({super.key, required this.buttonText, required this.text, this.isFailed, this.onTap});

  final String buttonText;
  final String text;
  final bool? isFailed;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          children: [
            Container(
                decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    shape: BoxShape.circle
                ),
                padding: EdgeInsets.all(isFailed == true ? 0 : 25),
                child: Icon(
                  isFailed == true ? Icons.close : Icons.person_outline ,
                  size: 100,
                  color: isFailed == true ? Colors.red : AppColors.defaultColor,
                )
            ),

            if(isFailed != true)
            PositionedDirectional(
              end: 0,
              child: Container(
                  decoration: const BoxDecoration(
                      color: AppColors.greenColor,
                      shape: BoxShape.circle
                  ),
                  padding: const EdgeInsets.all(5),
                  child: const Icon(
                    Icons.check_outlined ,
                    size: 35,
                    color: AppColors.whiteColor,
                  )
              ),
            ),

          ],
        ),

        Container(
          // height: 270,
          alignment: Alignment.center,
          width: 500,
          padding: const EdgeInsetsDirectional.only(start: 20 , end: 20),
          child: TextInAppWidget(text: text , textSize: 25, textColor: AppColors.whiteColor, isTextCenter: true ,fontWeightIndex: FontSelectionData.semiBoldFontFamily,),
        ),

        SizedBox(
          height: 60,
          width: 250,
          child: ButtonWidget(
            buttonColor: AppColors.whiteColor,
            text: buttonText,
            textColor: AppColors.defaultColor,
            fontWeightIndex: FontSelectionData.semiBoldFontFamily,
            onTap: onTap ?? (){
              Navigator.pop(context);
            },
            textSize: 16,
          ),
        )

      ],
    );
  }
}
