import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/request_service/map_background_in_service_request/ui/screens/row_image_text_in_last_container_in_map_background_in_service_request.dart';
import '../../../../../features/request_service/map_background_in_service_request/ui/screens/row_two_icon_in_last_container_in_map_background_in_service_request.dart';
import '../../../../../core/theming/colors.dart';


class LastContainerInMapBackgroundInServiceRequest extends StatelessWidget {
  const LastContainerInMapBackgroundInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 500,
        padding: const EdgeInsets.all(16),
        margin: EdgeInsetsGeometry.all(10),
        decoration: BoxDecoration(
          color: AppColors.whiteColor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColors.darkColor.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween ,
          children: [
            RowImageTextInLastContainerInMapBackgroundInServiceRequest(),
            RowTwoIconInLastContainerInMapBackgroundInServiceRequest(),
          ],
        ),
      ),
    );
  }
}
