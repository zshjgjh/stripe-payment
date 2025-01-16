import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:uipractice/core/errors/server_failure.dart';
import 'package:uipractice/core/utilis/stripe_service.dart';

import 'package:uipractice/features/checkout/data/payment_intent_input_model.dart';

import 'checkout_repo.dart';

class  CheckoutRepoImpl extends CheckoutRepo{
  final StripeService stripeService=StripeService();
  @override
  Future<Either<Failure, void>> makePayment({required PaymentIntentInputModel paymentIntentInputModel}) async {
   
    try {
     await stripeService.makePayment(paymentIntentInputModel: paymentIntentInputModel);
     return right(null);    // its void
   } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      print(e.toString());
      return left(ServerFailure(e.toString()));
   }
  }
  
}