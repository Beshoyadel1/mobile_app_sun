


import 'package:flutter/material.dart';

import '../../../core/language/language.dart';
import '../../../core/language/language_constant.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/fonts.dart';
import '../../../core/theming/text_styles.dart';
import 'circle_painter.dart';

class CircularProgressWidget extends StatelessWidget {
  final int current;
  final int total;

  const CircularProgressWidget({
    super.key,
    required this.current,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    double progress = current / total;

    return SizedBox(
      width: 64,
      height: 64,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: const Size(64, 64),
            painter: CirclePainter(progress),
          ),

          TextInAppWidget(
            text: '$current ${AppLocalizations.of(context)!.translate(AppLanguageKeys.from)} $total',
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.darkColor,
          ),
        ],
      ),
    );
  }
}