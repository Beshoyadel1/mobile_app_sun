import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/Insurance/custom_widget/last_button_container_page_choose_payment_details_widget.dart';
import '../../../../../../features/Insurance/finish_third_payment_details/ui/finish_third_payment_details.dart';
import '../../../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_state.dart';
import '../../../../../features/Insurance/custom_widget/app_snack_bar.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_cubit.dart';

class LastButtonContainerPageChoosePaymentDetails extends StatefulWidget {
  final void Function()? onTap;
  const LastButtonContainerPageChoosePaymentDetails({this.onTap, super.key});

  @override
  State<LastButtonContainerPageChoosePaymentDetails> createState() => _LastButtonContainerPageChoosePaymentDetailsState();
}

class _LastButtonContainerPageChoosePaymentDetailsState extends State<LastButtonContainerPageChoosePaymentDetails> {
  late RadioPaymentCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<RadioPaymentCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RadioPaymentCubit, RadioPaymentState>(
      buildWhen: (previous, current) {
        cubit.initializeDefault();
        return true;
      },
      builder: (context, state) {
        return LastButtonContainerPageChoosePaymentDetailsWidget(
          onTap: () {
            if (state.selectedIndex != null && state.selectedImage != null) {
              Navigator.of(context).push(
                NavigateToPageWidget(
                  FinishThirdPaymentDetails(
                    selectedImage: state.selectedImage!,
                  ),
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
    );
  }
}
