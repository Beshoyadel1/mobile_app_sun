import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/language/language_constant.dart';

import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../logic/services_cubit/services_cubit.dart';
import '../../../../../models/services_center_model.dart';
import '../../../../../models/spare_part_model.dart';
import '../widgets/add_to_card_boton_sheet.dart';
import '../widgets/choose_size.dart';


class SparePartDetailsScreen extends StatelessWidget {
  final SparePartModel part;
  final ServiceCenter center;

 const SparePartDetailsScreen({super.key, required this.part, required this.center});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
  providers: [
    BlocProvider(
      create: (context) => ServiceCenterDetailsCubit(),
    ),
    BlocProvider(
      create: (context) => ServicesCubit(),
),


  ],
  child: Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        appBar: AppbarProfile(
          image: AppImageKeys.notification,
          title: part.partName,
          showDefaultProfileImage: true,
        ),
        body: Builder(
          builder: (context) {
            final cubit = context.read<ServiceCenterDetailsCubit>();
            return Stack(
                children:[ Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(part.image, height: 176, fit: BoxFit.cover),),
                    ),
                    Row(
                      spacing: 5,
                      children: [
                        TextInAppWidget(text: part.partName, textSize: 16, fontWeightIndex: FontSelectionData.mediumFontFamily,),
                        Spacer(),
                        TextInAppWidget(text: '4.7', textSize: 16, fontWeightIndex: FontSelectionData.mediumFontFamily,),
                        Image.asset(AppImageKeys.starOrangeIcon, width: 20, height: 20),],),
                        TextInAppWidget(text: part.description, textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                        const SizedBox(height: 10),
                      TextInAppWidget(text: part.price, textSize: 18, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.orangeColor,),
                    TextInAppWidget(text: part.description, textSize: 12, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                    const SizedBox(height: 20),
                    TextInAppWidget(text: AppLanguageKeys.selectSize, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                    ChooseSize()

                  ],
                ),
                  ),
                  AddToCardBotonSheet(center: center,)


                ]);
          }
        )
      ),
);
  }
}
