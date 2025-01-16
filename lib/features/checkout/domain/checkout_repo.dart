import 'package:dartz/dartz.dart';
import 'package:uipractice/features/checkout/data/payment_intent_input_model.dart';

import '../../../core/errors/server_failure.dart';

abstract class CheckoutRepo{
  Future<Either<Failure,void>> makePayment({required PaymentIntentInputModel paymentIntentInputModel});
}