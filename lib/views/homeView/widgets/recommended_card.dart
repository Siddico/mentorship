import 'package:flutter/material.dart';
import 'package:mentorship/models/product_model.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class RecommendedCard extends StatelessWidget {
  final ProductModel product;

  const RecommendedCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Card(
        shadowColor: const Color(0xffF9F9F9),
        elevation: 0,
        child: SizedBox(
          width: 240,
          height: 70,
          child: Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(product.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
            ],
          ),
        ),
      ),
    );
  }
}
