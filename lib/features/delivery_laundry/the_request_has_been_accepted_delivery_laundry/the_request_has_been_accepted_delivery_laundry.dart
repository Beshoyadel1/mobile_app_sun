import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/delivery_laundry/the_request_has_been_accepted_delivery_laundry/screens/list_data_the_request_has_been_accepted_delivery_laundry.dart';
import '../../../../../core/theming/colors.dart';

class TheRequestHasBeenAcceptedDeliveryLaundry extends StatelessWidget {
  final String? text;
  const TheRequestHasBeenAcceptedDeliveryLaundry({
    super.key,
    this.text
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Align(
            alignment:AlignmentDirectional.center,
            child: SizedBox(
              width: 350,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                        child: ListDataTheRequestHasBeenAcceptedDeliveryLaundry(
                          text:text,
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
