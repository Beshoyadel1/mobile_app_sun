
import 'package:flutter/material.dart';

import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';




class ServiceCenters extends StatelessWidget {
  const ServiceCenters({super.key, required this.image, required this.bottomTexts, required this.topWidget, required this.height, required this.topAlignment, required this.widgetContiner, required this.heightContainer});
  final String image;
  final List<BottomTextData> bottomTexts;
  final Widget topWidget;
  final double height;
  final Alignment topAlignment;
  final double widgetContiner;
  final double heightContainer;

  @override
  Widget build(BuildContext context) {
    return        Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(image,
            width: widgetContiner,
            height: heightContainer,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: widgetContiner,
          height: heightContainer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withAlpha(250),
                Colors.transparent,
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 12,
          left: 12,
          right: 12,
          top: 12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: topAlignment,
                child: topWidget,
              ),
              SizedBox(height: height),
              ...bottomTexts.map((data) => TextInAppWidget(
                text: data.text,
                textSize: data.fontSize,
                fontWeightIndex: FontSelectionData.mediumFontFamily,
                textColor: data.color,
              )),

            ],
          ),
        ),
      ],
    );
  }
}

class BottomTextData {
  final String text;
  final Color color;
  final double fontSize;

  BottomTextData({
    required this.text,
    this.color = Colors.white,
    this.fontSize = 12,
  });
}