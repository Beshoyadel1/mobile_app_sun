import 'package:flutter/material.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';

class AppBarInsuranceOffers extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onTap;

  const AppBarInsuranceOffers({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(color: AppColors.scaffoldColor),
      leading: Container(
        width: 30,
        height: 30,
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
        child: IconButton(
          onPressed: onTap ?? () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.darkColor,
            size: 20,
          ),
        ),
      ),
      actions: [
        Image.asset(AppImageKeys.notify, width: 30),
        const SizedBox(width: 10),
        Image.asset(AppImageKeys.person, width: 30),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
