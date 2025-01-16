import 'package:flutter/material.dart';

import '../../../../../core/utilis/styles.dart';

class CustomCreditCard extends StatelessWidget {
  const CustomCreditCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListTile(
          leading:Image.asset('assets/images/logo.png'),
          title:Text('Credit Card',style: Styles.regular18(context),),
          subtitle: Text('Mastercard **78 ',style: Styles.regular18(context),),
        ),
      ),
    );
  }
}