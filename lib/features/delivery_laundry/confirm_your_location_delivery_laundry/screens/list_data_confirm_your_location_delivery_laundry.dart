import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/delivery_laundry/confirm_your_location_delivery_laundry/screens/stack_map_in_list_data_confirm_your_location_delivery_laundry.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class ListDataConfirmYourLocationDeliveryLaundry extends StatefulWidget {
  const ListDataConfirmYourLocationDeliveryLaundry({super.key});

  @override
  State<ListDataConfirmYourLocationDeliveryLaundry> createState() => _ListDataConfirmYourLocationDeliveryLaundryState();
}

class _ListDataConfirmYourLocationDeliveryLaundryState extends State<ListDataConfirmYourLocationDeliveryLaundry> {
  late TextEditingController textFormController;
  @override
  void initState() {
    super.initState();
    textFormController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextInAppWidget(
          text:AppLanguageKeys.pleaseSelectCarLocation,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.greyColor,
        ),
        Expanded(
          child: StackMapInListDataConfirmYourLocationDeliveryLaundry(
            textFormController: textFormController,
          ),
        ),
      ],
    );
  }
}