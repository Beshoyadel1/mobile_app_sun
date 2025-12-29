import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../logic/order_cubit/order_cubit.dart';
import '../../../logic/order_cubit/order_state.dart';
import '../../../models/order_model.dart';
import 'order_card.dart';
import 'order_details_widget.dart';


class OrdersListWidget extends StatelessWidget {
  const OrdersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OrdersCubit>();

    final orders = cubit.state is OrdersListState
        ? (cubit.state as OrdersListState).orders
        : [];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: orders.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final order = orders[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              NavigateToPageWidget(
                OrderDetailsWidget(order: order),
              ),
            );
          },
          child: OrderCard(order: order),
        );
      },
    );
  }
}
