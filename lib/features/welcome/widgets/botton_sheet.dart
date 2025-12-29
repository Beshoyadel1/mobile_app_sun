
import 'package:flutter/material.dart';
import '../../../core/theming/colors.dart';
import 'row_botton_sheet.dart';

class BottonSheet extends StatelessWidget {
  const BottonSheet({super.key, required this.onTap,this.buttonWidget,this.containerColor, this.skipText, this.nextText, this.containerHeight});
final Function onTap;
final Widget? buttonWidget;
final Color? containerColor;
final String? skipText;
final String? nextText;
final double?containerHeight;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height:containerHeight?? 123,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        color:containerColor ??AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withAlpha(51),
            blurRadius: 29,
            offset: const Offset(5, 12),
          ),
        ],
      ),
      child:Center(child: buttonWidget?? RowBottonSheet(onTap: onTap,skipText: skipText,nextText: nextText)),

    );
  }
}




