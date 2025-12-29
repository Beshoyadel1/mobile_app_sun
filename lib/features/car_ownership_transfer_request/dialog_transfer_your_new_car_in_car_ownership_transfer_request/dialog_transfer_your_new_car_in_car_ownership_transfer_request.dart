import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/car_ownership_transfer_request/dialog_transfer_your_new_car_in_car_ownership_transfer_request/screens/list_data_dialog_transfer_your_new_car_in_car_ownership_transfer_request.dart';
import '../../../../../core/theming/colors.dart';


class DialogTransferYourNewCarInCarOwnershipTransferRequest extends StatelessWidget {
  const DialogTransferYourNewCarInCarOwnershipTransferRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child:SizedBox(
          width: 400,
          height: 350,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListDataDialogTransferYourNewCarInCarOwnershipTransferRequest(),
          ),
        )
    );
  }
}