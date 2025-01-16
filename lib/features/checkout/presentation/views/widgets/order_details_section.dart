import 'package:flutter/material.dart';


import '../../../../../core/utilis/styles.dart';
import '../../../data/order_model.dart';
import 'order_detail.dart';

class OrderDetailsSection extends StatelessWidget {
  const OrderDetailsSection({
    super.key,
  });

  final List<OrderModel> order= const[
    OrderModel(title: 'Order Subtotal', subtitle:r'$42.45' ),
    OrderModel(title: 'Discount', subtitle:r'$0' ),
    OrderModel(title: 'Shipping', subtitle:r'$8' ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
      children:
        order.asMap().entries.map((e) {
          int index = e.key;
          var item = e.value;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: OrderDetail(orderModel: item),
          );
        }
    ).toList(),
    );
  }
}