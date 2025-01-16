import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uipractice/features/payment_details/presentation/data/paymeny_method_model.dart';
import 'package:uipractice/features/payment_details/presentation/views/widgets/payment_method_button.dart';
import 'package:uipractice/features/thank_you_card/presentation/views/widgets/custom_credit_card.dart';
import 'package:uipractice/features/thank_you_card/presentation/views/widgets/order_details_list_view.dart';
import 'package:uipractice/features/thank_you_card/presentation/views/widgets/paid_button.dart';

import '../../../../core/utilis/styles.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(FontAwesomeIcons.arrowLeft)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 32.0,right:32,top: 50,bottom: 16),
          child: Stack(
            clipBehavior: Clip.none,
                children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                  ),
                ),
                  Positioned(
                    top:-45,
                    right: 0,
                    left: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      radius: 45,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.green,
                        child: Image.asset('assets/images/check_mark.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height *0.25,
                    left: -15,
                    child: const CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height *0.25,
                    right: -15,
                    child: const CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                    ),
                  ),
              Positioned
                (
                bottom: MediaQuery.of(context).size.height *0.25 +15,
                right: 15,
                left: 15,
                child: Row(
                  children: List.generate(25, (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Expanded(
                      child: Container(
                        height: 2,
                        width: 8,
                        color: Colors.grey,
                      ),
                    ),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8,top:32),
                child: Column(
                  children: [

                    Text('Thank You',style: Styles.medium25(context),),

                    Text('Your transaction was successful',style: Styles.regular20(context),),

                   const OrderDetailsListView(),

                    const Divider(
                      height: 2,
                      indent: 32,
                      endIndent: 32,
                      thickness: 2,
                      color: Color(0xFFC7C7C7),
                    ),

                    ListTile(leading: Text('Total',style: Styles.semiBold24(context),),
                      trailing: Text(r'$50.45',style: Styles.semiBold24(context),),),

                    const SizedBox(height: 40,),


                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: CustomCreditCard(),
                    ),
                    const SizedBox(height: 5,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/Vector.png',height: 60,width: 142,),
                        const PaidButton()

                      ],
                    )
                  ],
                ),
              ),
            ]
          ),
        ));
  }
}
