

import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/language/language_constant.dart';
import '../../../core/theming/assets.dart';
import '../../../core/theming/colors.dart';
import 'custom_text_with_backbutton.dart';




class AppbarProfile extends StatelessWidget implements PreferredSizeWidget {
  const  AppbarProfile({
    super.key,
    this.pageToNavigate,
    required this.image,
    this.imageHeight,
    this.imageWidth,
    this.showDefaultProfileImage = false,
    this.title,
    this.showBackButton,
    this.onBack,

  });

  final Widget? pageToNavigate; // nullable
  final String image;
  final double? imageWidth;
  final double? imageHeight;
  final bool showDefaultProfileImage;
  final String? title;
  final bool? showBackButton;
  final VoidCallback? onBack;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: CustomTextWithBackbutton(text: title??AppLanguageKeys.profile,
          pageToNavigate: pageToNavigate, showBackButton: showBackButton??true,
          onBack: onBack ,

      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            spacing: 10,
            children: [
              Image.asset(
                image,
                width: imageWidth ?? 35,
                height: imageHeight ?? 35,
              ),
              if (showDefaultProfileImage)
                Image.asset(
                  AppConstants.isIndividual?  AppImageKeys.profileImage:AppImageKeys.companyLogo,
                  height: 45,
                  width: 45,
                ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
