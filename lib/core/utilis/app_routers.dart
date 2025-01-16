 import 'package:go_router/go_router.dart';
import 'package:uipractice/features/payment_details/presentation/views/payment_details_view.dart';
import 'package:uipractice/features/thank_you_card/presentation/views/thank_you_view.dart';

import '../../features/payment_details/presentation/views/widgets/payment_method_section.dart';
import '../../home_view.dart';
 abstract class AppRouters {
   static const kMyCartView = '/';
   static const kPaymentDetailsView = '/paymentdetailsview';
   static const kThankYoyView = '/thankyouview';

   static final router = GoRouter(
     routes: [
       GoRoute(
         path: kMyCartView,
         builder: (context, state) => const HomeView(),
       ),
       GoRoute(
         path: kPaymentDetailsView,
         builder: (context, state) => const PaymentDetailsView(),
       ),
       GoRoute(
         path: kThankYoyView,
         builder: (context, state) => const ThankYouView(),
       ),
     ],);
 }