import 'package:flutter/material.dart';
import 'package:uipractice/features/payment_details/presentation/data/paymeny_method_model.dart';

import '../../../../../core/utilis/responsive_font_size.dart';
import '../../../../../core/utilis/styles.dart';

class PaidButton extends StatelessWidget {
  const PaidButton({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 113,
      height: 58,
      decoration:    BoxDecoration(
          color: Colors.white,
          boxShadow:const [
            BoxShadow(
              color:Colors.green,
              blurRadius: 4,
              offset: Offset(0,0),
              spreadRadius: 0.5,

            )
          ],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: Colors.green,
              width:1.5
          )
      ),
      child: Center(child: Text('Paid',style:  TextStyle(
        color:  Colors.green,
        fontFamily: 'Inter',
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w600,
      ))),
    );
  }
}