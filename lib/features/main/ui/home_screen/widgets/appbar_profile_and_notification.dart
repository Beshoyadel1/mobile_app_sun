import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../ui/profile_screen.dart';
import '../../widgets/custom_car_drop_down.dart';

class AppbarProfileAndNotification extends StatelessWidget {
  const AppbarProfileAndNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 20,
      children: [
        InkWell(
          onTap: () {
            AppConstants.isIndividual? Navigator.of(context).push(NavigateToPageWidget(const ProfileScreen())):null;
          },
          child: Image.asset(
            AppConstants.isIndividual? AppImageKeys.profileImage:AppImageKeys.companyLogo,
            width: 45,
            height: 45,
          ),
        ),
        const SizedBox(width: 40),
        AppConstants.isIndividual?CustomCarDropdown():const SizedBox(width: 130),
        Image.asset(
          AppImageKeys.notificationLight,
          width: 35,
          height: 35,
        ),
       Image.asset(
          AppImageKeys.squareLogo,
          width: 45,
          height: 45,
        ),
      ],
    );
  }
}
