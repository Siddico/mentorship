import 'package:flutter/material.dart';
import 'package:mentorship/views/cart_View/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CartViewBody());
  }
}
