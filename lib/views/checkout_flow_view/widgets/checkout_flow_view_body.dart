import 'package:flutter/material.dart';
import 'package:mentorship/views/checkout_flow_view/widgets/build_checkout_appbar.dart';
import 'package:mentorship/views/checkout_flow_view/widgets/order_complete_step.dart';
import 'package:mentorship/views/checkout_flow_view/widgets/shipping_step.dart';

class CheckoutFlowViewBody extends StatefulWidget {
  const CheckoutFlowViewBody({super.key});

  @override
  State<CheckoutFlowViewBody> createState() => _CheckoutFlowViewBodyState();
}

class _CheckoutFlowViewBodyState extends State<CheckoutFlowViewBody> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildCheckoutAppBar(currentStep: _currentStep),
            IndexedStack(
              index: _currentStep,
              children: [
                ShippingStep(
                  onContinue: () {
                    setState(() {
                      _currentStep = 1;
                    });
                  },
                ),
                const OrderCompletedStep(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
