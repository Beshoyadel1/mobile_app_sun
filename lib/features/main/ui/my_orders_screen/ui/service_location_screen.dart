import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';
import '../../../../../core/AppDataList.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/setup_git_it.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../welcome/logic/location_cubit/location_cubit.dart';
import '../../../../welcome/logic/location_cubit/location_state.dart';
import '../../../../welcome/widgets/appbar_profile.dart';
import '../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../models/services_center_model.dart';

import '../../main_screen.dart';
import '../../services_screen/ui/service_center_details_screen/ui/service_center_details_screen.dart';
import '../widgets/body_map_with_search.dart';


class ServiceLocationScreen extends StatelessWidget {
 const ServiceLocationScreen({super.key, required this.center});
  final ServiceCenter center;

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocationCubit(),
        ),
      ],
      child: Scaffold(
        appBar: AppbarProfile(
          title: AppLanguageKeys.services,
          image: AppImageKeys.notification,
          showDefaultProfileImage: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextInAppWidget(text: AppLanguageKeys.enterCarAddress, textSize: 18, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),),
            const SizedBox(height: 32),
            BodyMapWithSearch(center: center,)

          ],
        ),
      ),
    );
  }
}