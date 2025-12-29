import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/setup_git_it.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../logic/services_cubit/services_cubit.dart';
import '../../../../../models/services_center_model.dart';

import '../../services_date_screen/ui/services_date_screen.dart';
import '../../all_spare_part_services_screen/widgets/spare_part_card.dart';
import '../widgets/spare_part_details_widget.dart';

class SpareAndProductsScreen extends StatelessWidget {
   SpareAndProductsScreen({super.key,required this.center});
  final  spareParts= AppData.spareParts;
   final ServiceCenter center;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  AppbarProfile(
          image: AppImageKeys.notification,
          title: AppLanguageKeys.centernName,
          showDefaultProfileImage: true,),
        body:  SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 30,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                TextInAppWidget(text:AppLanguageKeys.sparePartsAndProducts, textSize: 16, fontWeightIndex:  FontSelectionData.regularFontFamily, textColor:  AppColors.darkColor,),
                Center(
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: spareParts.take(6).map((part) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            NavigateToPageWidget(
                              BlocProvider(
                                create: (_) => ServicesCubit(),
                                child: SparePartDetailsWidget(part: part, center: center,),
                              ),
                            ),
                          );
                          },
                        child: SizedBox(
                          height: 161,
                          width: 120,
                          child: SparePartCard(part: part),
                        ),
                      );
                    }).toList(),
                  ),
          
                ),
               // Spacer(),
              const SizedBox(height: 60),
                Padding(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: ButtonWidget(
                        heightContainer: 60,
                        widthContainer: 300,
                        borderRadius: 50,
                        text: AppLanguageKeys.skipToCompleteBooking,
                        textColor: AppColors.whiteColor,
                        fontWeightIndex: FontSelectionData.regularFontFamily,
                        buttonColor: AppColors.orangeColor,
                        onTap: () {
                          Navigator.of(context).push(
                            NavigateToPageWidget(
                              BlocProvider(
                                create: (context) => getIt<ServiceCenterDetailsCubit>(),
                                child: ServicesDateScreen(center: center),
                              ),
                            ),
                          );},
                        textSize: 18,
                        isTextCenter: true,
                      ),
                    ),
                  ),
          
          
              ],
          
          ),
        ),
      ),
    ));
  }
}