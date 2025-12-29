import 'package:flutter/material.dart';

import '../../theming/colors.dart';

class CustomListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final Color? containerColor;


  const CustomListTile({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: containerColor??Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: ListTile(
          leading: leading,
          title: title,
          subtitle: subtitle,
          trailing: trailing,
          onTap: onTap,
        ),
      ),
    );
  }
}
