import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/custom_widget/app_snack_bar.dart';
import '../../../../../features/request_service/custom_widget/circular_progress_indicator_with_text_widget.dart';
import '../../../../../features/request_service/first_page_in_service_request/logic/request_service_cubit/request_service_cubit.dart';
import '../../../../../features/request_service/first_page_in_service_request/logic/request_service_cubit/request_service_state.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/row_circle_image_text_loading.dart';
import '../../../../../features/request_service/offers_presented_in_service_request/ui/offers_presented_in_service_request.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/last_button_in_list_data_in_first_page_in_service_request.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/map_in_list_data_in_first_page_in_service_request.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/select_time_of_service_screen.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/part_text_with_textfield_in_list_data_in_first_page_in_service_request.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/select_the_type_of_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ListDataInFirstPageInServiceRequest extends StatefulWidget {
  const ListDataInFirstPageInServiceRequest({super.key, required this.cubit});
  final RequestServiceCubit cubit;
  @override
  State<ListDataInFirstPageInServiceRequest> createState() => _ListDataInFirstPageInServiceRequestState();
}

class _ListDataInFirstPageInServiceRequestState extends State<ListDataInFirstPageInServiceRequest> {
  late TextEditingController textFormController1, textFormController2;
  late RequestServiceCubit cubit;
  @override
  void initState() {
    super.initState();
    textFormController1 = TextEditingController();
    textFormController2 = TextEditingController();
    cubit = widget.cubit;

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        BlocBuilder<RequestServiceCubit, RequestServiceState>(
          bloc: cubit,
          buildWhen: (previous, current) =>
          current is RequestServiceLoading ||
              current is RequestServiceInitial ||
              current is RequestServiceError ||
              current is RequestServiceSuccess,
          builder: (context, state) {
            if (state is RequestServiceError) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                AppSnackBarWidget.show(context, AppLanguageKeys.enterYourData);
              }
              );
            }

            if (state is RequestServiceSuccess) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.of(context).push(
                  NavigateToPageWidget(
                      OffersPresentedInServiceRequest()),
                );
                cubit.resetToInitial();

              });
            }

            if (state is RequestServiceLoading) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 5,
                children: [
                  RowCircleImageTextLoading(),
                  SizedBox(height: 50,),
                  CircularProgressIndicatorWithTextWidget(text: AppLanguageKeys.waitingForOffers),
                ],
              );
            }

            return Column(
              spacing: 30,
              children: [
                SelectTheTypeOfService(),
                PartTextWithTextFieldInListDataInFirstPageInServiceRequest(
                  textFormController1: textFormController1,
                  textFormController2: textFormController2,
                ),
                SelectTimeOfServiceScreen(),
                MapInListDataInFirstPageInServiceRequest(),
                LastButtonInListDataInFirstPageInServiceRequest(
                  onTap: () {
                    cubit.submit(
                      textFormController1.text,
                      textFormController2.text,
                    );
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
