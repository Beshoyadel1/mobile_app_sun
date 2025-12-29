import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../core/theming/colors.dart';

class DesignTextField extends StatefulWidget {
  const DesignTextField({super.key});

  @override
  State<DesignTextField> createState() => _DesignTextFieldState();
}

class _DesignTextFieldState extends State<DesignTextField> {
  late TextEditingController textFormFieldWidget;
  @override
  void initState() {
    textFormFieldWidget = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.all(20),
      width: 500,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextFormFieldWidget(
        textFormController: textFormFieldWidget,
        fillColor: AppColors.whiteColor,
        borderColor: AppColors.whiteColor,
        hintText:'أكتب هنا',
        hintTextColor: AppColors.darkColor,
        contentPadding: EdgeInsetsGeometry.all(10),
        hintTextSize: 10,
        textSize: 15,
        textFormWidth: 500,
        enabledBorderRadius:BorderRadius.circular(10),
        focusedBorderRadius: BorderRadius.circular(10),
        prefixIcon: AppImageKeys.send,
        suffixIcon: CupertinoIcons.smiley,
      ),
    );
  }
}
