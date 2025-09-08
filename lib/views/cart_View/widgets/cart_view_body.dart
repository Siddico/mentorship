import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/app_assets.dart';
import 'package:mentorship/utils/widgets/build_appbar.dart';
import 'package:mentorship/views/cart_View/widgets/cart_item.dart';
import 'package:mentorship/views/cart_View/widgets/checkout_button.dart';
import 'package:mentorship/views/cart_View/widgets/price_summary.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildAppBar(context),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: const [
                  SizedBox(height: 20),
                  CartItem(
                    imagePath: Assets.assetsImagesPerson3,
                    name: 'Sportwear Set',
                    price: '\$ 80.00',
                    size: 'L',
                    color: 'Cream',
                    quantity: 1,
                  ),
                  SizedBox(height: 20),
                  CartItem(
                    imagePath: Assets.assetsImagesPerson1,
                    name: 'Turtleneck Sweater',
                    price: '\$ 39.99',
                    size: 'M',
                    color: 'White',
                    quantity: 1,
                  ),
                  SizedBox(height: 20),
                  CartItem(
                    imagePath: Assets.assetsImagesPerson2,
                    name: 'Cotton T-shirt',
                    price: '\$ 30.00',
                    size: 'L',
                    color: 'Black',
                    quantity: 1,
                  ),
                  SizedBox(height: 40),
                  PriceSummary(),
                ],
              ),
            ),
          ),
        ),
        const CheckoutButton(),
      ],
    );
  }
}
