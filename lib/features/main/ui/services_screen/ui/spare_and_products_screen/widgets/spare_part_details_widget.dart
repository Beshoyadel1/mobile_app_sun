import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/core/setup_git_it.dart';
import 'package:sun_system_app/core/theming/assets.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../../welcome/widgets/botton_sheet.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../logic/services_cubit/services_cubit.dart';
import '../../../../../logic/services_cubit/services_state.dart';
import '../../../../../models/services_center_model.dart';
import '../../../../../models/spare_part_model.dart' show SparePartModel;
import '../../services_date_screen/ui/services_date_screen.dart';



class  SparePartDetailsWidget extends StatelessWidget {
  final SparePartModel part;
  final ServiceCenter center;
  final List<String> options = [AppLanguageKeys.oneLiter, AppLanguageKeys.twoLiters, AppLanguageKeys.threeLiters];

 SparePartDetailsWidget({super.key, required this.part, required this.center});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppbarProfile(
          image: AppImageKeys.notification,
          title: AppLanguageKeys.centernName,
          showDefaultProfileImage: true,),
        body: Column(
      children: [
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(part.image, height: 176, fit: BoxFit.cover),
                  ),
                ),
                Row(
                  spacing: 5,
                  children: [
                    TextInAppWidget(text: part.partName, textSize: 16, fontWeightIndex: FontSelectionData.mediumFontFamily,),
                    Spacer(),
                    TextInAppWidget(text: '4.7', textSize: 16, fontWeightIndex: FontSelectionData.mediumFontFamily,),
                    Image.asset(AppImageKeys.starOrangeIcon, width: 20, height: 20),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextInAppWidget(text: part.price, textSize: 18, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.orangeColor,),
                    TextInAppWidget(text: AppLanguageKeys.available2Items, textSize: 14, fontWeightIndex: FontSelectionData.mediumFontFamily, textColor: AppColors.greyColor,),
                  ],
                ),
                TextInAppWidget(text: part.description, textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                const SizedBox(height: 20),
                TextInAppWidget(text: AppLanguageKeys.selectSize, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                BlocBuilder<ServicesCubit, ServicesState>(
                  builder: (context, state) {
                    int selectedSizeIndex = -1;
                    if (state is SelectSizeIndex) {
                      selectedSizeIndex = state.selectedSizeIndex;
                    }
                    return Row(
                      spacing: 10,
                      children: List.generate(options.length, (index) {
                        final isSelected =  selectedSizeIndex == index;
                        return ButtonWidget(
                          heightContainer: 48,
                          widthContainer: 48,
                          borderRadius: 24,
                          borderColor: AppColors.lightGreyColor,
                          text: options[index],
                          textColor:
                          isSelected ? AppColors.whiteColor : AppColors.greyColor,
                          fontWeightIndex: FontSelectionData.regularFontFamily,
                          buttonColor:
                          isSelected ? AppColors.orangeColor : AppColors.whiteColor,
                          onTap: () {
                            context.read<ServicesCubit>().selectSizeIndex(index);
                          },
                          textSize: 14,
                          isTextCenter: true,
                        );}),);},),],),),
                     Spacer(),
               BottonSheet(
          containerColor: AppColors.whiteColor,
          onTap: (){
            Navigator.of(context).push(
              NavigateToPageWidget(
                BlocProvider(
                  create: (context) => getIt<ServiceCenterDetailsCubit>(),
                  child: ServicesDateScreen(center: center),
                ),
              ),
            );},
          skipText:AppLanguageKeys.skip,
          nextText:AppLanguageKeys.addToCart,

        ),
      ],
    ));
  }
}





