import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uipractice/core/utilis/app_routers.dart';
import 'package:uipractice/features/checkout/presentation/manager/checkout_cubit.dart';
import 'package:uipractice/features/checkout/presentation/views/widgets/pay_button.dart';
import 'package:uipractice/features/payment_details/presentation/views/widgets/payment_method_section.dart';

import '../../../../checkout/data/payment_intent_input_model.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    bool isLoad=false;
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const PaymentMethodSection(),

          const Expanded(child: SizedBox(height: 20,)),

          BlocConsumer<CheckoutCubit, CheckoutState>(

            listener: (context, state) {

              if(state is CheckoutLoadingState){
                isLoad=true;

              }else if(state is CheckoutFailureState){
                isLoad=false;
                ScaffoldMessenger.of(context).showSnackBar( SnackBar(content:Text(state.errorMessage)));
                Navigator.of(context).pop();
                //GoRouter.of(context).pushReplacement(AppRouters.kMyCartView);
              }else{
                isLoad=false;
               GoRouter.of(context).push(AppRouters.kThankYoyView);
              }
            },
            builder: (context, state) {
              return PayButton(
                onPressed: (){
                  const PaymentIntentInputModel paymentIntentInputModel=PaymentIntentInputModel(amount: '100', currency: 'USD', customerId: 'cus_RaHXt7lcEJK1V9');
                  BlocProvider.of<CheckoutCubit>(context).
                  makePayment(paymentIntentInputModel: paymentIntentInputModel);
                },
                title: 'Continue',
                isLoad: isLoad,
              );
            },
          )
        ],
      ),
    );
  }
}