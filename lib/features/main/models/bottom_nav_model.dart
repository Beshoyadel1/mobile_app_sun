
import 'package:flutter/cupertino.dart';

import '../../../core/language/language.dart';

class BottomNavModel {
  final String icon;
  final String label;

  BottomNavModel({required this.icon, required this.label});
}

List<BottomNavigationBarItem> buildBottomItems(BuildContext context, List<BottomNavModel> itemsData) {
  return itemsData.map((item) {
    return BottomNavigationBarItem(
      icon: ImageIcon(AssetImage(item.icon), size: 27,),
      label: AppLocalizations.of(context).translate(item.label),
    );
  }).toList();
}


