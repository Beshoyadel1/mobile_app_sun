import 'package:flutter/material.dart';
import 'package:sun_system_app/features/main/ui/services_screen/ui/services_payment_screen/widgets/services_type_file.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../models/services_center_model.dart';
import '../../../../../models/services_item.dart';
import '../../../../my_orders_screen/widgets/package_widget.dart';
class Services extends StatefulWidget {
 const Services({super.key, required this.center, required this.serviceCenters});
 final ServiceCenter center;
 final List<ServiceCenter> serviceCenters;

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  final List<ServiceItem> services = [
    ServiceItem(name: AppLanguageKeys.electricity, price: 300.00, isChecked: false,image:AppImageKeys.fileIcon),
    ServiceItem(name: AppLanguageKeys.mechanic, price: 150.00, isChecked: true,image:AppImageKeys.fileIcon),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      isSelected: false,
      onTap: () {},
      borderRadius: BorderRadius.circular(14),
      border: Border(),
      typeWidget: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            Row(
              spacing: 4,
              children: [
                TextInAppWidget(
                  text: AppLanguageKeys.services,
                  textSize: 14,
                  textColor: AppColors.darkColor,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                ),
                const Spacer(),
                Image.asset(AppImageKeys.editIcon, height: 18, width: 18),
                TextInAppWidget(
                  text: AppLanguageKeys.edit,
                  textSize: 14,
                  textColor: AppColors.darkorangeColor,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  decorationText: TextDecoration.underline,
                  decorationTextColor: AppColors.darkorangeColor,
                ),
              ],
            ),

        widget.center.name == widget.serviceCenters[0].name
            ?
        ServicesTypeFile():
        PackageWidget()
          ],
        ),
      ),
    );
  }
}
