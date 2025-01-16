import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:uipractice/core/utilis/app_routers.dart';

import 'package:uipractice/features/payment_details/presentation/views/widgets/credit_card&form.dart';
import 'package:uipractice/features/payment_details/presentation/views/widgets/payment_method_section.dart';

import '../../../../core/utilis/styles.dart';
import '../../../checkout/presentation/views/widgets/pay_button.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({
    super.key,
  });

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {

  GlobalKey<FormState> formKey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: Text('Payment Details',style: Styles.medium25(context),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
    },
        icon: const Icon(FontAwesomeIcons.arrowLeft)),
    ),
    body:   CustomScrollView(
       scrollDirection: Axis.vertical,
      slivers: [
        const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: PaymentMethodSection(),
            )
        ),
        SliverToBoxAdapter(
            child: CreditCard(formKey:formKey, autovalidateMode: autovalidateMode, )
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Expanded(child: SizedBox(height: 20,)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PayButton(title: 'Pay',
                  onPressed:(){
             //      if(formKey.currentState!.validate()){
              //       formKey.currentState!.save();
             //        GoRouter.of(context).push(AppRouters.kThankYoyView);
            //       }else{
            //         autovalidateMode=AutovalidateMode.always;
              //       setState(() {
              //       });
               //    }

                    GoRouter.of(context).push(AppRouters.kThankYoyView);
                  } ,),
              )
            ],
          ),
        )
      ],
    ),
    );
  }
}