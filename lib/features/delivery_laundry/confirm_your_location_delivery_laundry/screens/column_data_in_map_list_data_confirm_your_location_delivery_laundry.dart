import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/delivery_laundry/confirm_your_location_delivery_laundry/screens/text_with_text_field_in_column_data_in_map_list_data_confirm_your_location_delivery_laundry.dart';
import '../../../../../features/delivery_laundry/confirm_your_location_delivery_laundry/screens/last_button_in_list_data_confirm_your_location_delivery_laundry.dart';

class ColumnDataInMapListDataConfirmYourLocationDeliveryLaundry extends StatelessWidget {
  final TextEditingController textFormController;
  const ColumnDataInMapListDataConfirmYourLocationDeliveryLaundry({super.key ,required this.textFormController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWithTextFieldInColumnDataInMapListDataConfirmYourLocationDeliveryLaundry(
              textFormController: textFormController
          ),
          LastButtonInListDataConfirmYourLocationDeliveryLaundry()
        ],
      ),
    );
  }
}
