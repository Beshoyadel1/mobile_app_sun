
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/AppDataList.dart';
import '../../models/order_model.dart';
import 'order_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  final List<OrderModel> _orders = AppData.orders;

  OrdersCubit({String? initialOrder}) : super(OrdersListState(AppData.orders)) {
    if (initialOrder != null) {
      try {
        final order =
        _orders.firstWhere((o) => o.orderCode == initialOrder);
        emit(OrderDetailsState(order));
      } catch (e) {
        emit(OrdersListState(_orders));
      }
    }
  }

  void showOrders() => emit(OrdersListState(_orders));

  void selectOrder(OrderModel order) => emit(OrderDetailsState(order));
}
