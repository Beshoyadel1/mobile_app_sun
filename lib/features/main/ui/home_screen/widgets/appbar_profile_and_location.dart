
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/constants.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../welcome/logic/location_cubit/location_cubit.dart';
import '../../../../welcome/logic/location_cubit/location_state.dart';
import '../ui/profile_screen.dart';
import '../../widgets/custom_car_drop_down.dart';


class AppbarProfileAndLocation extends StatelessWidget {
  const AppbarProfileAndLocation({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<LocationCubit, LocationState>(
      builder: (context, state) {
        String locationText = AppLanguageKeys.locating;
        if (state is LocationLoaded) {
          locationText = state.placeName;
        } else if (state is LocationError) {
          locationText = AppLanguageKeys.locationFailed;
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing:8,
          children: [

            Image.asset(
              AppImageKeys.locationSquareIcon,
              width: 45,
              height: 45,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextInAppWidget(
                  text: AppLanguageKeys.yourLocation,
                  textSize: 14,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor: AppColors.greyColor,
                ),
                TextInAppWidget(
                  text: locationText,
                  textSize: 14,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor: AppColors.whiteColor,
                ),
              ],
            ),
            const SizedBox(width: 30),
            CustomCarDropdown(),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                    NavigateToPageWidget(const ProfileScreen()));
              },
              child: Image.asset(
                AppConstants.isIndividual?  AppImageKeys.profileImage:AppImageKeys.companyLogo,
                width: 45,
                height: 45,
              ),
            ),
          ],
        );
      },
    );
  }
}
