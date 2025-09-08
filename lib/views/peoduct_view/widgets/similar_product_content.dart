import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/app_assets.dart';
import 'package:mentorship/views/peoduct_view/widgets/similar_product_card.dart';

class SimilarProductsContent extends StatelessWidget {
  const SimilarProductsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          children: const [
            SimilarProductCard(
              imagePath: Assets.assetsImagesPerson1,
              name: 'Rise Crop Hoodie',
              price: '\$ 43.00',
            ),
            SimilarProductCard(
              imagePath: Assets.assetsImagesPerson2,
              name: 'Gym Crop Top',
              price: '\$ 39.99',
            ),
            SimilarProductCard(
              imagePath: Assets.assetsImagesPerson3,
              name: 'Sport Sweatshirt',
              price: '\$ 49.99',
            ),
          ],
        ),
      ),
    );
  }
}
