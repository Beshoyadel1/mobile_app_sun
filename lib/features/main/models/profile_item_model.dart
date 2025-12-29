import 'package:flutter/material.dart';

class ProfileItemModel{
  final Widget leading;
  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  final Color? containerColor;
  final Function()? onTap;

  ProfileItemModel({
    required this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.containerColor,
    this.onTap,
  });
}
