
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:flutter_stripe_web/flutter_stripe_web.dart';
import 'package:uipractice/core/utilis/api_keys.dart';
import 'package:uipractice/features/checkout/data/ephemeral_key_model.dart';
import 'package:uipractice/features/checkout/data/init_payment_sheet_input_model.dart';

import '../../features/checkout/data/payment_intent_input_model.dart';
import '../../features/checkout/data/payment_intent_model.dart';

import 'api_service.dart';


class StripeService{
  final ApiService apiService=ApiService();


  Future<PaymentIntentModel> createPaymentIntent({required PaymentIntentInputModel paymentIntentInputModel})async{
    var response= await apiService.post(url: 'https://api.stripe.com/v1/payment_intents',
        body: paymentIntentInputModel.toJson(),
        token: ApiKeys.secretKey,
        );
    var paymentIntentModel=PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel; //includes client secret key
  }

  Future<EphemeralKeyModel> createEphemeralKey({required String customerId})async{
    var response= await apiService.post(url: 'https://api.stripe.com/v1/ephemeral_keys',
      body:{'customer':customerId},
      token: ApiKeys.secretKey,
      headers: {
      'Authorization':'Bearer ${ApiKeys.secretKey}',
        'Stripe-Version': '2024-12-18.acacia'
      },
    );
    var ephemeralKeyModel=EphemeralKeyModel.fromJson(response.data);
    return ephemeralKeyModel; //includes ephemeral key
  }

  Future<void> initPaymentSheet({required InitPaymentSheetInputModel initPaymentSheetInputModel})async{
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters:  SetupPaymentSheetParameters(
          customerSessionClientSecret: initPaymentSheetInputModel.clientSecret,
          customerId: initPaymentSheetInputModel.customerId,
          customerEphemeralKeySecret: initPaymentSheetInputModel.ephemeralKey,
          merchantDisplayName: 'zuhor'
        )
    );
  }


  Future<void> displayPaymentSheet()async{
    await Stripe.instance.presentPaymentSheet();
  }


  Future<void> makePayment({required PaymentIntentInputModel paymentIntentInputModel})async{

    var paymentIntentModel=await createPaymentIntent(paymentIntentInputModel: paymentIntentInputModel);

    var ephemeralKeyModel=await createEphemeralKey(customerId: paymentIntentInputModel.customerId);

    InitPaymentSheetInputModel initPaymentSheetInputModel=InitPaymentSheetInputModel(customerId: paymentIntentInputModel.customerId, clientSecret:paymentIntentModel.clientSecret, ephemeralKey: ephemeralKeyModel.secret);

    await initPaymentSheet(initPaymentSheetInputModel: initPaymentSheetInputModel);
    await displayPaymentSheet();

  }
}






