import 'package:flutter/material.dart';

import '../theming/colors.dart';
import '../theming/text_styles.dart';


class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.isLoading, this.iconData,  this.onTap, this.iconColor , this.text,  this.decorationText,this.decorationTextColor,this.textSize, this.buttonColor, this.iconSize, this.textColor, this.widthInButton, this.fontWeightIndex, this.boxShape, this.borderColor, this.isIconInEnd, this.borderRadius, this.isColumn, this.isTextCenter, this.textHeight, this.borderWidth, this.image, this.heightContainer, this.widthContainer, this.imageHeight, this.imageWidth}) ;
  final bool? isLoading;
  final IconData? iconData ;
  final Color? iconColor ;
  final double? iconSize ;
  final void Function()? onTap ;
  final String? text ;
  final TextDecoration? decorationText ;
  final Color?    decorationTextColor;
  final double? textSize ;
  final Color? textColor ;
  final Color? buttonColor ;
  final Color? borderColor ;
  final bool? widthInButton ;
  final int? fontWeightIndex ;
  final BoxShape? boxShape ;
  final bool? isIconInEnd ;
  final double? borderRadius ;
  final bool? isColumn ;
  final bool? isTextCenter ;
  final double? textHeight ;
  final double? borderWidth ;
  final String? image ;
  final double? heightContainer ;
  final double? widthContainer ;
  final double? imageHeight ;
  final double? imageWidth ;


  @override
  Widget build(BuildContext context) {
    return  InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap ,
      child: Container(
        height: heightContainer ?? 50,
        width: widthContainer ,
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.whiteColor,
          borderRadius: boxShape != null ? null : BorderRadius.circular(borderRadius ?? 10),
          border: boxShape != null ? null : borderColor == null ? null : Border.all(color: borderColor! , width: borderWidth ?? 1),
          shape: boxShape ?? BoxShape.rectangle
        ),
        child: isColumn == true ?
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if(iconData != null)
              Icon(
                iconData ,
                color: iconColor ?? Colors.white,
                size: iconSize ?? 20,
              ),

            if(image != null)
              Image.asset(
                image!,
                fit: BoxFit.fill,
                height: imageHeight ?? 10,
                width: imageWidth ?? 10,
              ),

            if(widthInButton != null)
              const SizedBox(width: 10,),

            if(text != null)...{
              if(isIconInEnd != true)...{
                Expanded(
                  child:  isLoading == true
                      ? SizedBox(
                    height: textSize ?? 18,
                    width: textSize ?? 18,
                    child: CircularProgressIndicator(
                      color: textColor ?? Colors.white,
                      strokeWidth: 2,
                    ),
                  )
                      :Center(
                    child: TextInAppWidget(
                        text: text ?? '',
                        textColor: textColor ?? Colors.white,
                        textSize: textSize ,
                        isTextCenter: isTextCenter ,
                        textAlign: TextAlign.center,
                        fontWeightIndex: fontWeightIndex,
                      decorationText: decorationText??TextDecoration.underline,
                      decorationTextColor: decorationTextColor??AppColors.orangeColor,
                    ),
                  ),
                ),
              }
              else...{
                const SizedBox(width: 40,),
                Expanded(
                  child: Center(
                        child: TextInAppWidget(text: text ?? '',
                            textColor: textColor ?? Colors.white,
                            textSize: textSize,
                            textAlign: TextAlign.center,
                            decorationText:decorationText??TextDecoration.underline ,
                            decorationTextColor: decorationTextColor??AppColors.orangeColor,
                            fontWeightIndex: fontWeightIndex),

                      )
                  ),

              }
            },
          ],
        ):
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if(iconData != null)
              Icon(
                iconData ,
                color: iconColor ?? Colors.white,
                size: iconSize ?? 20,
              ),
            if(image != null)
              const  SizedBox(width: 22,),
            if(image != null)
              Image.asset(
                image!,
                fit: BoxFit.fill,
                height: imageHeight ?? 10,
                width: imageWidth ?? 10,
              ),
            const  SizedBox(width: 10,),


            if(widthInButton != null)
              const SizedBox(width: 10,),
            if(text != null)...{
              if(isIconInEnd != true)...{
                TextInAppWidget(text: text ?? '', textColor: textColor ?? Colors.white, textSize: textSize , isTextCenter: isTextCenter , fontWeightIndex: fontWeightIndex,  decorationTextColor:decorationTextColor?? AppColors.orangeColor,
                  decorationText: decorationText??TextDecoration.none ,
                ),
              }
              else...{
                const SizedBox(width: 40,),
                Expanded(
                child: Center(
                        child: TextInAppWidget(text: text ?? '',
                            textColor: textColor ?? Colors.white,
                            textSize: textSize,
                            textAlign: TextAlign.center,
                            decorationTextColor:decorationTextColor?? AppColors.orangeColor,
                            decorationText: decorationText??TextDecoration.none ,
                            fontWeightIndex: fontWeightIndex),

                      )
                  ),

              }
            },


          ],
        ),
      ),
    );
  }
}
