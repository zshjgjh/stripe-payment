import 'package:flutter/material.dart';

import '../../../../../core/utilis/styles.dart';
import '../../../../checkout/data/order_model.dart';


class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key, required this.orderModel,
  });

  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(orderModel.title, style: Styles.semiBold18(context)),
      trailing: Text(orderModel.subtitle, style: Styles.semiBold18(context),),);
  }
}