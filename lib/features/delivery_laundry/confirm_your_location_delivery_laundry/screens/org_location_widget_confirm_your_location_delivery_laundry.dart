import 'package:flutter/material.dart';
import '../../../../../features/delivery_laundry/confirm_your_location_delivery_laundry/screens/open_street_map_screen_confirm_your_location_delivery_laundry.dart';

class OrgLocationWidgetConfirmYourLocationDeliveryLaundry extends StatefulWidget {
  const OrgLocationWidgetConfirmYourLocationDeliveryLaundry({super.key, required this.location});

  final String location;

  @override
  State<OrgLocationWidgetConfirmYourLocationDeliveryLaundry> createState() => _OrgLocationWidgetConfirmYourLocationDeliveryLaundryState();
}

class _OrgLocationWidgetConfirmYourLocationDeliveryLaundryState
    extends State<OrgLocationWidgetConfirmYourLocationDeliveryLaundry> {
  double latitude = 0;
  double longitude = 0;

  @override
  void initState() {
    super.initState();
    if (widget.location.isNotEmpty) {
      latitude = double.parse(widget.location.split(',')[0]);
      longitude = double.parse(widget.location.split(',')[1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: OpenStreetMapScreenConfirmYourLocationDeliveryLaundry(
        latitude: latitude,
        longitude: longitude,
      ),
    );
  }
}
