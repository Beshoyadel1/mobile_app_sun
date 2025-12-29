import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/constants.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/widgets/back_button_circle.dart';
import '../../../../../logic/services_cubit/services_cubit.dart';
import '../../../../../logic/services_cubit/services_state.dart';
import '../widgets/all_services.dart';
import '../widgets/basic_services.dart';
import '../widgets/premium_service.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ServicesCubit(),
      child: BlocBuilder<ServicesCubit, ServicesState>(
        builder: (context, state) {
          final isSubScreen = state is PremiumServiceSelected || state is TypeServiceSelected;
          return Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            appBar: isSubScreen ?  AppBar(
              automaticallyImplyLeading: false,
              titleSpacing: 0,
              title: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  spacing: 12,
                  children: [
                    InkWell(
                      onTap: () {context.read<ServicesCubit>().goBack();},
                      child: const BackButtonCircle(
                      ),
                    ),
                    TextInAppWidget(text: AppLanguageKeys.services, textSize: 18, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                    const Spacer(),
                    Image.asset(AppImageKeys.notification, width: 35, height: 35,),
                    const SizedBox(width: 12),
                    Image.asset(AppConstants.isIndividual?AppImageKeys.profileImage:AppImageKeys.companyLogo, height: 45, width: 45,),
                  ],
                ),
              ),
            ) : null,


            body: state is ServicesInitial
                ? const AllServices()
                : state is PremiumServiceSelected
                ? PremiumService(service: state.service)
                : state is TypeServiceSelected
                ? BasicServices(selectedIndex: state.selectedIndex)
                : const SizedBox.shrink(),

          );
        },
      ),
    );
  }
}
