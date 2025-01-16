import 'package:flutter/material.dart';


import '../../../../../core/utilis/styles.dart';
import '../../../data/order_model.dart';

class OrderDetail extends StatelessWidget {
  const OrderDetail({
    super.key, required this.orderModel,
  });

  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(orderModel.title,style: Styles.regular18(context),),
      Text(orderModel.subtitle,style: Styles.regular18(context)),
    ]
    );
  }
}