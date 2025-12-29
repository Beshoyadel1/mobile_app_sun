import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/request_service/custom_widget/circular_progress_indicator_with_text_widget.dart';
import '../../../../../features/car_ownership_transfer_request/enter_your_email_and_password_car_ownership_transfer_request/logic/car_owner_transfer_cubit.dart';
import '../../../../../features/delivery_laundry/the_request_has_been_accepted_delivery_laundry/the_request_has_been_accepted_delivery_laundry.dart';
import '../../../../../features/warranty/custom_widget/show_modal_bottom_sheet_widget.dart';
import '../../../../../features/car_ownership_transfer_request/enter_your_email_and_password_car_ownership_transfer_request/screens/list_data_enter_your_email_and_password_car_ownership_transfer_request.dart';
import '../../../../../features/car_ownership_transfer_request/enter_your_password_car_ownership_transfer_request/screens/last_button_orange_without_icon.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';

class EnterYourEmailAndPasswordCarOwnershipTransferRequest extends StatelessWidget {
  const EnterYourEmailAndPasswordCarOwnershipTransferRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CarOwnerTransferCubit(),
      child: BlocBuilder<CarOwnerTransferCubit, CarOwnerTransferState>(
        buildWhen: (previous, current) {
          return current is! CarOwnerTransferSuccess || previous != current;
        },
        builder: (context, state) {
          if (state is CarOwnerTransferSuccess) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              showCustomBottomSheet(
                context: context,
                child:
                TheRequestHasBeenAcceptedDeliveryLaundry(
                  text: AppLanguageKeys.carTransferredToNewOwner,
                ),
                height: 300,
              );
              // showDialog(
              //   context: context,
              //   barrierDismissible: true,
              //   builder: (BuildContext context) {
              //     return const DialogTransferYourNewCarInCarOwnershipTransferRequest();
              //   },
              // );
            });
          }

          return Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            appBar: AppbarProfileWidget(title: 'نقل السيارة لمستخدم أخر'),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: SizedBox(
                    width: 350,
                    child: Column(
                      children: [
                        Expanded(
                          child: state is CarOwnerTransferLoading
                              ? const Center(
                            child: CircularProgressIndicatorWithTextWidget(
                                text: AppLanguageKeys.waitingForNewUserApproval
                            ),
                          )
                              : const SingleChildScrollView(
                            child: ListDataEnterYourEmailAndPasswordCarOwnershipTransferRequest(),
                          ),
                        ),
                        LastButtonOrangeWithoutIcon(
                          text: AppLanguageKeys.completeTransfer,
                          onTap: () {
                            context.read<CarOwnerTransferCubit>().startTransfer();
                          },
                        ),
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
