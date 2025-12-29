import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/utilies/map_of_all_app.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/open_street_map_screen_first_page_in_service_request.dart';

class OrgLocationWidgetFirstPageInServiceRequest extends StatefulWidget {
  const OrgLocationWidgetFirstPageInServiceRequest({super.key, required this.location});

  final String location;

  @override
  State<OrgLocationWidgetFirstPageInServiceRequest> createState() => _OrgLocationWidgetFirstPageInServiceRequestState();
}

class _OrgLocationWidgetFirstPageInServiceRequestState extends State<OrgLocationWidgetFirstPageInServiceRequest> {
  double latitude = 0;
  double longitude = 0;

  @override
  void initState() {
    if (widget.location.isEmpty) {
      latitude = 0;
      longitude = 0;
    } else {
      latitude = double.parse(widget.location.split(',')[0]);
      longitude = double.parse(widget.location.split(',')[1]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isTablet = size.width <= ValuesOfAllApp.customTabWidth;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Container(
          width: double.infinity,
          height: 230,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.orangeColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                OpenStreetMapScreenFirstPageInServiceRequest(
                  latitude: latitude,
                  longitude: longitude,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
