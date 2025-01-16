import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uipractice/features/payment_details/presentation/views/widgets/payment_method_button.dart';

import '../../../../../core/utilis/styles.dart';
import '../../data/paymeny_method_model.dart';

class PaymentMethodSection extends StatefulWidget {
  const PaymentMethodSection({
    super.key,
  });

  @override
  State<PaymentMethodSection> createState() => _PaymentMethodSectionState();
}

class _PaymentMethodSectionState extends State<PaymentMethodSection> {

  int activeIndex=0;
  List<PaymentMethodModel> methods=[
    PaymentMethodModel(image: 'assets/images/credit_pay.png'),
    PaymentMethodModel(image: 'assets/images/paypal.png'),
    PaymentMethodModel(image: 'assets/images/apple_pay.png')
  ];
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: methods.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                activeIndex = index;
                setState(() {});
              }
            },
            child: PaymentMethodButton(
              paymentMethodModel: item,
              isActive: activeIndex == index ? true : false,)
        );
      }).toList(),);

  }
}