import 'dart:math';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class SeparatedDonutChart extends StatelessWidget {
  SeparatedDonutChart({super.key});
  final List<double> values = const [17439, 9478, 18197, 12510, 14406];
  final List<Color> colors = [
    AppColors.greyColor,
    AppColors. lightBlueColor,
    AppColors.darkorangeColor,
    AppColors.blueColor,
    AppColors.orangeColor,

  ];
  final List<String> titles = [
    AppLanguageKeys.fuel,
    AppLanguageKeys.repairAndMaintenance,
    AppLanguageKeys.cleaningAndWashing,
    AppLanguageKeys.requestTowTruck,
    AppLanguageKeys.spareParts,
  ];
  String _formatNumber(double n) {
    final s = n.toInt().toString();
    final reg = RegExp(r'\B(?=(\d{3})+(?!\d))');
    return s.replaceAllMapped(reg, (m) => ',');
  }
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      isSelected: true,

      onTap: () {},
      borderRadius: BorderRadius.circular(10),
      border: Border(),
      containerColor: AppColors.whiteColor,
      typeWidget: Column(
        children: [
          SizedBox(
            width: 220,
            height: 220,
            child: CustomPaint(
              painter: DonutPainter(),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextInAppWidget(text: '200.00', textColor: AppColors.orangeColor, textSize: 20, fontWeightIndex: FontSelectionData.mediumFontFamily,),
                        Image.asset(AppImageKeys.coin, width: 19, height: 21,),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const TextInAppWidget(text: AppLanguageKeys.totalInvoices, textColor: AppColors.blackColor44, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily,),

                  ],
                ),
              ),
            ),
          ),
          Column(
            children: List.generate(values.length, (i) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6),
                child: Row(
                  children: [
                    Container(width: 12, height: 12, decoration: BoxDecoration(color: colors[i], shape: BoxShape.circle)),
                    const SizedBox(width: 8),
                    TextInAppWidget(text: titles[i], textColor: AppColors.blackColor44, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily,),
                    const Spacer(),
                    TextInAppWidget(text: _formatNumber(values[i]), textColor: AppColors.blackColor44, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily,),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
class DonutPainter extends CustomPainter {
  final double strokeWidth = 22;
  final double gap = 0.29;

  final List<Color> colors = [
    AppColors.greyColor,
    AppColors. lightBlueColor,
    AppColors.darkorangeColor,
    AppColors.blueColor,
    AppColors.orangeColor,



  ];

  final List<double> values = [1, 1, 1, 1, 1];

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width, size.height) / 2 - strokeWidth;

    final total = values.fold(0.0, (a, b) => a + b);
    double startAngle = -pi / 2;

    for (int i = 0; i < values.length; i++) {
      final sweep = (values[i] / total) * 2 * pi - gap;

      final paint = Paint()
        ..color = colors[i]
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.round;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweep,
        false,
        paint,
      );

      startAngle += sweep + gap;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}





