import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/insurance_new/page_choose_payment_details_new/logic/radio_payment_new_cubit.dart';
import '../../../../../features/insurance_new/page_choose_payment_details_new/logic/radio_payment_new_state.dart';
import '../../../../../features/insurance_new/your_insurance_information_new/ui/your_insurance_information_new.dart';
import '../../../../../features/Insurance/custom_widget/app_snack_bar.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';

class LastButtonContainerPageChoosePaymentDetailsNew extends StatefulWidget {
  final void Function()? onTap;
  const LastButtonContainerPageChoosePaymentDetailsNew({this.onTap, super.key});

  @override
  State<LastButtonContainerPageChoosePaymentDetailsNew> createState() => _LastButtonContainerPageChoosePaymentDetailsState();
}

class _LastButtonContainerPageChoosePaymentDetailsState extends State<LastButtonContainerPageChoosePaymentDetailsNew> {
  late RadioPaymentNewCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<RadioPaymentNewCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: const BoxDecoration(
        color: AppColors.orangeColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: BlocBuilder<RadioPaymentNewCubit, RadioPaymentNewState>(
        buildWhen: (previous, current) {
          cubit.initializeDefault();
          return true;
        },
        builder: (context, state) {
          return ButtonWidget(
            text: AppLanguageKeys.payment,
            textColor: AppColors.darkColor,
            buttonColor: AppColors.whiteColor,
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            heightContainer: 50,
            widthContainer: 300,
            borderRadius: 20,
            onTap: () {
              if (state.selectedIndex != null && state.selectedImage != null) {
                Navigator.of(context).push(
                  NavigateToPageWidget(
                      YourInsuranceInformationNew()
                  /*  FinishThirdPaymentDetails(
                      selectedImage: state.selectedImage!,
                    ),*/
                  ),
                );
              } else {
                AppSnackBarWidget.show(
                  context,
                  AppLanguageKeys.selectPaymentOptionFirst,
                );
              }
            },
          );
        },
      ),
    );
  }
}
