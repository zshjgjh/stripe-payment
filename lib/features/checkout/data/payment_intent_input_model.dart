class PaymentIntentInputModel{
  final String amount;
  final String currency;
  final String customerId;


  const PaymentIntentInputModel({ required this.customerId, required this.amount, required this.currency});

  toJson(){
    return{
     'amount':amount,
      'currency':currency,
      'customer':customerId
    };
  }
}