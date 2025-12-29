import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../features/Insurance/insurance_offers/ui/screens/default_tab_controller_insurance_offers.dart';
import '../../../../features/Insurance/insurance_offers/ui/screens/fiest_row_title_insurance_offers.dart';
import '../../../insurance_new/insurance_offers_new/ui/insurance_new_offers.dart';
import '../../../main/ui/home_screen/widgets/appbar_profile_and_location.dart';
import '../../../welcome/logic/location_cubit/location_cubit.dart';

class InsuranceOffers extends StatefulWidget {
  const InsuranceOffers({super.key});

  @override
  State<InsuranceOffers> createState() => _InsuranceOffersState();
}

class _InsuranceOffersState extends State<InsuranceOffers> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationCubit()..getUserLocation(),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Container(
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImageKeys.background),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      AppColors.darkColor.withAlpha(120),
                      BlendMode.srcOver,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Center(
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(flex: 1,),
                    Container(
                            margin: const EdgeInsets.only(right: 0),
                            padding: const EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Center(
                              child: IconButton(
                                onPressed:() => Navigator.pop(context),
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: AppColors.darkColor,
                                  size: 20,
                                ),
                              ),
                            ),

                    ),
                      Spacer(flex: 1,),


                      Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 4),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22.0),
                            child: AppbarProfileAndLocation(),
                          ),
                          CustomContainer(
                            borderRadius: BorderRadius.circular(60),
                            isSelected: false,
                            containerHeight: 74,
                            containerWidth: 391,
                            containerColor: AppColors.whiteColor,
                            onTap: () {},
                            typeWidget: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextInAppWidget(
                                  text: 'لدي وثيقة تأمين سارية',
                                  textSize: 14,
                                  textColor: AppColors.darkGreyColor,
                                  fontWeightIndex:
                                      FontSelectionData.regularFontFamily,
                                ),
                                CustomContainer(
                                  containerWidth: 115,
                                  containerHeight: 33,
                                  containerColor: AppColors.veryLightOrangeColor
                                      .withAlpha(120),
                                  isSelected: true,
                                  onTap: () {
                                    Navigator.of(context).push(
                                      NavigateToPageWidget(
                                          InsuranceNewOffers()),
                                    );
                                  },
                                  typeWidget: TextInAppWidget(
                                    text: 'تسجيل الوثيقة',
                                    textSize: 12,
                                    textColor: AppColors.orangeColor,
                                    fontWeightIndex:
                                        FontSelectionData.regularFontFamily,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Spacer(flex: 2,),
                    ],
                  ),
                ),
              ),

              const FiestRowTitleInsuranceOffers(),
              const Expanded(child: DefaultTabControllerInsuranceOffers()),
            ],
          ),
        ),
      ),
    );
  }
}
