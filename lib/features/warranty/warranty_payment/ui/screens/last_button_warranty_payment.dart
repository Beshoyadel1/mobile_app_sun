import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/custom_widget/app_snack_bar.dart';
import '../../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_cubit.dart';
import '../../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_state.dart';
import '../../../../../features/warranty/warranty_done/ui/warranty_done.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';
import '../../../custom_widget/height_cubit.dart';


class LastButtonWarrantyPayment extends StatefulWidget {

  const LastButtonWarrantyPayment ({super.key});

  @override
  State<LastButtonWarrantyPayment> createState() => _LastButtonWarrantyPaymentState();
}

class _LastButtonWarrantyPaymentState extends State<LastButtonWarrantyPayment> {
  late RadioPaymentCubit cubit;
  late HeightCubit cubit2;

  @override
  void initState() {
    super.initState();
    cubit = context.read<RadioPaymentCubit>();
    cubit2 = context.read<HeightCubit>();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RadioPaymentCubit, RadioPaymentState>(
      buildWhen: (previous, current) {
        cubit.initializeDefault();
        return true;
      },
      builder:  (context, state) {
        return  Container(
          width: 500,
          decoration: BoxDecoration(
            color: AppColors.orangeColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ButtonWidget(
            text: AppLanguageKeys.payment,
            textColor: AppColors.darkColor,
            buttonColor: AppColors.whiteColor,
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            heightContainer: 40,
            borderRadius: 30,
            onTap: () {
              if (state.selectedIndex != null && state.selectedImage != null) {
                cubit2.changeHeight(300);
                Navigator.of(context).push(
                  NavigateToPageWidget(
                    WarrantyDoneState(),
                  ),
                );
               // closeSheetAndNavigate(context, WarrantyDoneState());
              } else {
                AppSnackBarWidget.show(
                  context,
                  AppLanguageKeys.selectPaymentOptionFirst,
                );
              }
            },

          ),
        );
      }
    );
  }
}
