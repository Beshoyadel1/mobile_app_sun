import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';

class CustomImageCard extends StatelessWidget {
  final String image;
  final double? height;
  final double borderRadius;
  final Widget? overlay;
  final Widget? bottomContent;
  final double? width;
  final Color? color;

  final bool enableGradientOverlay;
  final List<Color> gradientColors;
  final bool fullImage;

  const CustomImageCard({
    super.key,
    required this.image,
    this.height,
    this.borderRadius = 12,
    this.overlay,
    this.bottomContent,
    this.width,
    this.color,
    this.enableGradientOverlay = false,
    this.gradientColors = const [
      Colors.black54,
      Colors.transparent,
    ],
    this.fullImage = false,
  });

  @override
  Widget build(BuildContext context) {
    final imageHeight = fullImage ? (height ?? 250) : (height ?? 250) * 0.7;

    return Container(
      width: width ?? 181,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color ?? AppColors.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadius),
                  topRight: Radius.circular(borderRadius),
                  bottomLeft: Radius.circular(fullImage?borderRadius:0),
                  bottomRight: Radius.circular(fullImage?borderRadius:0),
                ),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  height:imageHeight , // safe fallback
                  fit: BoxFit.cover,
                ),
              ),
              if (enableGradientOverlay)
                Container(
                  height:imageHeight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: gradientColors,
                    ),
                  ),
                ),
              if (overlay != null) Positioned.fill(child: overlay!),
            ],
          ),

          if (bottomContent != null)
            Padding(
              padding: const EdgeInsets.all(6),
              child: bottomContent!,
            ),
        ],
      ),
    );
  }
}

