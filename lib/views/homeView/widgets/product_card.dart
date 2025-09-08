import 'package:flutter/material.dart';
import 'package:mentorship/models/product_model.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/views/peoduct_view/product_view.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProductView();
                  },
                ),
              );
            },
            child: Container(
              width: 126,
              height: 172,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(product.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            product.name,
            style: TextStyles.fontsize14weight400.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: const Color(0xff1D1F22),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            product.price,
            style: TextStyles.fontsize14weight400.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: const Color(0xff1D1F22),
            ),
          ),
        ],
      ),
    );
  }
}
