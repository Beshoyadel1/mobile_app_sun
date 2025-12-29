import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/delivery_laundry/confirm_your_location_delivery_laundry/screens/column_data_in_map_list_data_confirm_your_location_delivery_laundry.dart';
import '../../../../../features/delivery_laundry/confirm_your_location_delivery_laundry/screens/org_location_widget_confirm_your_location_delivery_laundry.dart';


class StackMapInListDataConfirmYourLocationDeliveryLaundry extends StatelessWidget {
  final TextEditingController textFormController;

  const StackMapInListDataConfirmYourLocationDeliveryLaundry({
    super.key,
    required this.textFormController
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Positioned.fill(
          child: OrgLocationWidgetConfirmYourLocationDeliveryLaundry(
            location: "30.0444,31.2357",
          ),
        ),

        ColumnDataInMapListDataConfirmYourLocationDeliveryLaundry(
          textFormController: textFormController,
        )
      ],
    );
  }
}
