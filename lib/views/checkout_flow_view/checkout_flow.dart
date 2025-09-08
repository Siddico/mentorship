import 'package:flutter/material.dart';
import 'package:mentorship/views/checkout_flow_view/widgets/checkout_flow_view_body.dart';

class CheckoutFlowView extends StatefulWidget {
  const CheckoutFlowView({super.key});

  @override
  State<CheckoutFlowView> createState() => _CheckoutFlowViewState();
}

class _CheckoutFlowViewState extends State<CheckoutFlowView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: CheckoutFlowViewBody(),
    );
  }
}
