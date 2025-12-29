import 'dart:ui';

class OrderModel {
  final String image;
  final String title;
  final String centerName;
  final String orderCode;
  final String price;
  final String status;
  final String date;
  final Color statusColor;

  OrderModel({
    required this.image,
    required this.title,
    required this.centerName,
    required this.orderCode,
    required this.price,
    required this.status,
    required this.date,
    required this.statusColor,
  });
}
