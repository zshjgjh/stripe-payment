import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:uipractice/features/checkout/data/payment_intent_input_model.dart';
import 'package:uipractice/features/checkout/domain/checkout_repo_impl.dart';

part 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit(this.checkoutRepoImpl) : super(CheckoutInitialState());

  final CheckoutRepoImpl checkoutRepoImpl;

  Future<void> makePayment({required PaymentIntentInputModel paymentIntentInputModel })async {

    emit(CheckoutLoadingState());

    var result= await checkoutRepoImpl.makePayment(paymentIntentInputModel:paymentIntentInputModel );
        result.fold((failure) {
          emit(CheckoutFailureState(errorMessage: failure.errorMessage));
        },(r) {
          emit(CheckoutSuccessState());
        }
        );


      }

  }


