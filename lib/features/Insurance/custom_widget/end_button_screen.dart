import 'package:flutter/cupertino.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/fonts.dart';


class EndButtonScreen extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final void Function()? onTap;
  EndButtonScreen({super.key,required this.text,required this.textColor,required this.buttonColor,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 500,
            child: ButtonWidget(
              text: text,
              textColor:textColor,
              buttonColor:buttonColor,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              heightContainer: 50,
              widthContainer: 300,
              borderRadius: 20,
              onTap:onTap,
            ),
          ),
        ],
      ),
    );
  }
}
