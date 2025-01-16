part of 'checkout_cubit.dart';

@immutable
sealed class CheckoutState {}

final class CheckoutInitialState extends CheckoutState {}

final class CheckoutLoadingState extends CheckoutState {}

final class CheckoutFailureState extends CheckoutState {
  final String errorMessage;
  CheckoutFailureState({required this.errorMessage});
}

final class CheckoutSuccessState extends CheckoutState {

}