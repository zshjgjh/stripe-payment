import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:uipractice/core/utilis/api_keys.dart';
import 'package:uipractice/core/utilis/app_routers.dart';
import 'package:uipractice/features/checkout/domain/checkout_repo_impl.dart';
import 'package:uipractice/features/checkout/presentation/manager/checkout_cubit.dart';

void main() async {

   Stripe.publishableKey = ApiKeys.publishableKey;
   runApp(
       DevicePreview(
         enabled: !kReleaseMode,
         builder: (context) => const MyApp(),
       )// Wrap your app
   );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CheckoutCubit>(
      create: (context) {
        return CheckoutCubit(CheckoutRepoImpl());
      },
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouters.router,

      ),
    );
  }
}
