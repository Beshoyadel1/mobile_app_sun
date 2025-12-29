import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/row_circle_image_text_loading.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/text_in_select_the_type_of_service.dart';
import '../../../../../features/request_service/custom_widget/container_data_list_offer.dart';

class ListDataOffersPresentedInServiceRequest extends StatelessWidget {

  const ListDataOffersPresentedInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        RowCircleImageTextLoading(),
        SizedBox(height: 50,),
        TextInSelectTheTypeOfService(text: AppLanguageKeys.serviceCenterOffers),
        ContainerDataListOffer(
          isBestOffer: true,
        ),
        ContainerDataListOffer(),
        ContainerDataListOffer(),
        ContainerDataListOffer(),
      ],
    );
  }
}
