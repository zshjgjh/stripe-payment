import 'package:flutter/material.dart';
import 'package:uipractice/features/thank_you_card/presentation/views/widgets/custom_list_tile.dart';

import '../../../../../core/utilis/styles.dart';
import '../../../../checkout/data/order_model.dart';


class OrderDetailsListView extends StatelessWidget {
  const OrderDetailsListView({
    super.key,
  });

  final List<OrderModel> order= const[
    OrderModel(title: 'Date', subtitle:'01/24/2023' ),
    OrderModel(title: 'Time', subtitle:'10:15 AM' ),
    OrderModel(title: 'To', subtitle:'Sam Louis' ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: order.length,
      scrollDirection: Axis.vertical,
        itemBuilder: (context,index){
        return  CustomListTile(orderModel: order[index],);
        }
    );
  }
}