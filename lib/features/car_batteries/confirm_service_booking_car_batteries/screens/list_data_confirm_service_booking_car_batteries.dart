import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../features/Insurance/custom_widget/container_invoice_widget.dart';
import '../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_cubit.dart';
import '../../../../features/Insurance/page_choose_payment_details/ui/screens/container_list_visa.dart';
import '../../../../features/car_batteries/confirm_service_booking_car_batteries/screens/container_coupon_in_list_data_confirm_service_booking_car_batteries/container_coupon_in_list_data_confirm_service_booking_car_batteries.dart';
import '../../../../features/car_batteries/confirm_service_booking_car_batteries/screens/container_time_in_list_data_confirm_service_booking_car_batteries/container_time_in_list_data_confirm_service_booking_car_batteries.dart';
import '../../../../features/car_batteries/confirm_service_booking_car_batteries/screens/container_service_in_list_data_confirm_service_booking_car_batteries/container_service_in_list_data_confirm_service_booking_car_batteries.dart';
import '../../../../features/car_batteries/confirm_service_booking_car_batteries/screens/container_model_car_in_list_data_confirm_service_booking_car_batteries/container_model_car_in_list_data_confirm_service_booking_car_batteries.dart';
import '../../../../features/car_batteries/confirm_service_booking_car_batteries/screens/first_title_in_list_data_confirm_service_booking_car_batteries.dart';

class ListDataConfirmServiceBookingCarBatteries extends StatelessWidget {
  const ListDataConfirmServiceBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FirstTitleInListDataConfirmServiceBookingCarBatteries(),
        ContainerModelCarInListDataConfirmServiceBookingCarBatteries(),
        ContainerServiceInListDataConfirmServiceBookingCarBatteries(),
        ContainerTimeInListDataConfirmServiceBookingCarBatteries(),
        ContainerCouponInListDataConfirmServiceBookingCarBatteries(),
        ContainerInvoiceWidget(
            priceInsuranceInstallment: '450.00',
            priceTaxes: '45.00',
            priceTotal: '495.00'
        ),
        BlocProvider(
            create: (_) => RadioPaymentCubit(),
            child: ContainerListVisa()
        )
      ],
    );
  }
}
