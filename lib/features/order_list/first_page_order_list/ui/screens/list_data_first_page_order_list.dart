import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../features/order_list/create_new_order_in_order_list/ui/create_new_order_in_order_list.dart';
import '../../../../../features/order_list/custom_widget/container_list_data_first_page_order_list_widget.dart';

class ListDataFirstPageOrderList extends StatelessWidget {
  const ListDataFirstPageOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        ContainerListDataFirstPageOrderListWidget(
          isCreateNewOrder: true,
            imagPath: AppImageKeys.emp,
            title: AppLanguageKeys.maintenanceAndRepair,
            subTitle: 'أسم مركز الاصلاح',
            orderNumber:  '#656556',
            price: '200.00',
            time: '1:00 pm - 1/1/2025 ',
          onTab: (){
            Navigator.of(context).push(
              NavigateToPageWidget(
                  CreateNewOrderInOrderList()),
            );
          },
        ),
        ContainerListDataFirstPageOrderListWidget(
          isDone: true,
          imagPath: AppImageKeys.spare_parts,
          title: AppLanguageKeys.sparePartsService,
          subTitle: 'إطارات',
          orderNumber:  '#656556',
          price: '200.00',
          time: '1:00 pm - 1/1/2025 ',
        ),
        ContainerListDataFirstPageOrderListWidget(
          imagPath: AppImageKeys.emp,
          title: AppLanguageKeys.oilChange,
          subTitle: 'أسم مركز الاصلاح',
          orderNumber:  '#656556',
          price: '200.00',
          time: '1:00 pm - 1/1/2025 ',
        ),
        ContainerListDataFirstPageOrderListWidget(
          isCreateNewOrder: true,
          imagPath: AppImageKeys.emp,
          title: AppLanguageKeys.maintenanceAndRepair,
          subTitle: 'أسم مركز الاصلاح',
          orderNumber:  '#656556',
          price: '200.00',
          time: '1:00 pm - 1/1/2025 ',
          onTab: (){
            Navigator.of(context).push(
              NavigateToPageWidget(
                  CreateNewOrderInOrderList()),
            );
          },
        ),
        ContainerListDataFirstPageOrderListWidget(
          isDone: true,
          imagPath: AppImageKeys.spare_parts,
          title: AppLanguageKeys.sparePartsService,
          subTitle: 'إطارات',
          orderNumber:  '#656556',
          price: '200.00',
          time: '1:00 pm - 1/1/2025 ',
        ),
        ContainerListDataFirstPageOrderListWidget(
          imagPath: AppImageKeys.emp,
          title: AppLanguageKeys.oilChange,
          subTitle: 'أسم مركز الاصلاح',
          orderNumber:  '#656556',
          price: '200.00',
          time: '1:00 pm - 1/1/2025 ',
        ),
      ],
    );
  }
}
