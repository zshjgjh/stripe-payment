import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:uipractice/core/utilis/stripe_service.dart';
import 'package:uipractice/features/checkout/presentation/views/widgets/pay_button.dart';
import 'package:uipractice/features/payment_details/presentation/views/widgets/payment_details.dart';

import '../../../../core/utilis/app_routers.dart';
import '../../../../core/utilis/styles.dart';
import '../../data/payment_intent_input_model.dart';
import '../manager/checkout_cubit.dart';
import 'widgets/order_details_section.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: Styles.medium25(context),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(FontAwesomeIcons.arrowLeft)),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/cart.png'),
                const SizedBox(
                  height: 10,
                ),
                const OrderDetailsSection(),
                const Divider(
                  height: 20,
                  indent: 32,
                  endIndent: 32,
                  thickness: 2,
                  color: Color(0xFFC7C7C7),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Text(
                    'Total',
                    style: Styles.semiBold24(context),
                  ),
                  trailing: Text(
                    r'$50.45',
                    style: Styles.semiBold24(context),
                  ),
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 10,
                )),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PayButton(
                        title: 'Complete Payment',
                        onPressed: () {
                          showModalBottomSheet(
                            elevation: 2,
                            backgroundColor: Colors.white,
                              context: (context),
                              builder: (context) {
                                return const PaymentDetails();
                              });
                        }))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
