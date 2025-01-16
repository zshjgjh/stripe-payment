import 'package:flutter/material.dart';
import 'package:uipractice/features/payment_details/presentation/data/paymeny_method_model.dart';

class PaymentMethodButton extends StatelessWidget {
  const PaymentMethodButton({
    super.key,
    required this.paymentMethodModel,
    required this.isActive,
  });

  final PaymentMethodModel paymentMethodModel;
 final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 103,
      height: 62,
      decoration:    BoxDecoration(
        color: Colors.white,
        boxShadow:   [
          BoxShadow(
            color:isActive? const Color(0xFF012169):Colors.white,
            blurRadius: 4,
            offset: const Offset(0,0),
            spreadRadius: 0.5,

          )
        ],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: isActive?const Color(0xFF012169):const Color(0xFF000000).withOpacity(.5),
              width:isActive?1.5:1.0
          )
      ),
      child: Image.asset(paymentMethodModel.image!),
    );
  }
}