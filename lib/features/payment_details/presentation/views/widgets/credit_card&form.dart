import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({
    super.key, required this.formKey, required this.autovalidateMode,
  });

   final GlobalKey<FormState> formKey;
   final AutovalidateMode autovalidateMode;

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
   String cardNumber='',expiryDate='',cardHolderName='', cvvCode='';

   bool showBackView=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardType: CardType.americanExpress,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            onCreditCardWidgetChange: (CreditCardBrand brand) {},
            bankName: 'USA Bank',
            cardBgColor: const Color(0xFF012169),
            enableFloatingCard: true,
            floatingConfig: const FloatingConfig(
              isGlareEnabled: true,
              isShadowEnabled: false,
              shadowConfig: FloatingShadowConfig(),
            )),
        CreditCardForm(
            autovalidateMode:widget.autovalidateMode,
            formKey: widget.formKey, // Required
            cardNumber: cardNumber, // Required
            expiryDate: expiryDate, // Required
            cardHolderName: cardHolderName, // Required
            cvvCode: cvvCode, // Required
            onCreditCardModelChange: (CreditCardModel creditCardModel) {
              cardHolderName=creditCardModel.cardHolderName;
              cardNumber=creditCardModel.cardNumber;
              expiryDate=creditCardModel.expiryDate;
              cvvCode=creditCardModel.cvvCode;
              showBackView=creditCardModel.isCvvFocused;
              setState(() {

              });

            }, // Required
            obscureCvv: true,
            obscureNumber: true,
            isHolderNameVisible: true,
            isCardNumberVisible: true,
            isExpiryDateVisible: true,
            enableCvv: true,

            cvvValidationMessage: 'Please input a valid CVV',
            dateValidationMessage: 'Please input a valid date',
            numberValidationMessage: 'Please input a valid number',

            inputConfiguration: const InputConfiguration(
                cardNumberDecoration: InputDecoration(
                  labelText: 'Number',
                  hintText: 'XXXX XXXX XXXX XXXX',
                ),
                expiryDateDecoration: InputDecoration(
                  labelText: 'Expired Date',
                  hintText: 'XX/XX',
                ),
                cvvCodeDecoration: InputDecoration(
                  labelText: 'CVV',
                  hintText: 'XXX',
                ),
                cardHolderDecoration: InputDecoration(
                  labelText: 'Card Holder',
                )))
      ],
    );
  }
}
