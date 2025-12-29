import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../../../core/setup_git_it.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/logic/select_car_cubit/select_car_cubit.dart';
import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../../welcome/widgets/botton_sheet.dart';
import '../../services_payment_screen/widgets/bottom_sheet_success_request.dart';
import '../widgets/add_car_image.dart';
import '../widgets/price_and_state_car_widget.dart' show PriceAndStateCarWidget;
import '../widgets/select_car_details.dart';

class DetailsAddCarScreen extends StatelessWidget {
  const DetailsAddCarScreen({super.key, this.textController});
  final TextEditingController? textController;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SelectedCarCubit>(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            appBar: AppbarProfile(
              image: AppImageKeys.notification,
              title: AppLanguageKeys.carAuction,
              showDefaultProfileImage: true,
            ),
            bottomSheet: BottonSheet(
              containerColor: AppColors.whiteColor,
              buttonWidget:
              BottomSheetSuccessRequest(
                showOrderReceived: true,
                textShow: AppLanguageKeys.carAddedForSale,
                showPleaseAttend: false,
                showOrderDetailsButton: false,
                  buttonColor: AppColors.orangeColor,textColor: AppColors.whiteColor,
                  text: AppLanguageKeys.next),
              onTap: () {},
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Center(
                  child: SizedBox(
                    width: 450,
                    child: Column(
                      spacing: 32,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextInAppWidget(
                          text:AppLanguageKeys.displayAuction,
                          textSize: 15.7,
                          fontWeightIndex: FontSelectionData.regularFontFamily,
                          textColor: AppColors.darkColor,
                        ),

                        TextFormFieldWidget(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          text: AppLanguageKeys.adName,
                          textFormController:
                              textController ?? TextEditingController(),
                          textSize: 14,
                          textColor: AppColors.darkGreyColor,
                          isColumn: true,
                          fillColor: AppColors.whiteColor,
                          borderColor: AppColors.lightGreyColor,
                          fontWeightIndex: FontSelectionData.semiBoldFontFamily,
                          isValidator: true,
                          onChanged: (value) {
                            context.read<SelectedCarCubit>().changeCar(value);
                          },
                        ),
                        PriceAndStateCarWidget(),
                        TextFormFieldWidget(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 60,
                          ),
                          isColumn: true,
                          text:AppLanguageKeys.carDescription,
                          textFormController:
                              textController ?? TextEditingController(),
                          textSize: 14,
                          textColor: AppColors.darkGreyColor,
                          fillColor: AppColors.whiteColor,
                          borderColor: AppColors.lightGreyColor,
                          textFormHeight: 113,
                          fontWeightIndex: FontSelectionData.semiBoldFontFamily,
                          isValidator: true,
                          focusedBorderRadius: BorderRadius.circular(14),
                          enabledBorderRadius: BorderRadius.circular(14),
                        ),
                               Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 38.0),
                                 child: SelectCarDetails(),
                               ),
                        AddCarImage(),
                        const SizedBox(height: 132,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
