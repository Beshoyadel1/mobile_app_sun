import 'package:flutter/material.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';
class AppbarProfileWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onTap;
  final Color? color;
  final bool showLeading;
  //isimage
  final bool isImage;

  const AppbarProfileWidget({
    super.key,
    this.onTap,
    required this.title,
    this.color,
    this.showLeading = true,
    this.isImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.transparent,
      flexibleSpace: Container(
        color: color ?? AppColors.scaffoldColor,
      ),
      title: TextInAppWidget(
        text: title,
        textSize: 15,
        fontWeightIndex: FontSelectionData.mediumFontFamily,
        textColor: AppColors.darkColor,
      ),
      leading: showLeading
          ? Container(
        width: 10,
        height: 10,
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: IconButton(
            onPressed: onTap ?? () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.darkColor,
              size: 20,
            ),
          ),
        ),
      )
          : null,
      actions:
      isImage?
      [
        Image.asset(AppImageKeys.person, width: 30),
        const SizedBox(width: 10),
      ]:null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
