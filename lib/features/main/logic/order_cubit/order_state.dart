
import '../../models/order_model.dart';


abstract class OrdersState {}

class OrdersListState extends OrdersState {
  final List<OrderModel> orders;
  OrdersListState(this.orders);
}

class OrderDetailsState extends OrdersState {
  final OrderModel order;
  OrderDetailsState(this.order);
}
