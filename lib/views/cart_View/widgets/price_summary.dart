import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class PriceSummary extends StatelessWidget {
  const PriceSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16), // 👈 مهم عشان مفيش تلاصق مع الأطراف
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // 👈 يخلي العناصر تاخد العرض
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Product price',
                style: TextStyles.fontsize14weight400.copyWith(
                  color: const Color(0xff8A8A8F),
                ),
              ),
              Text(
                '\$110',
                style: TextStyles.fontsize14weight400.copyWith(
                  color: const Color(0xff000000),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipping',
                style: TextStyles.fontsize14weight400.copyWith(
                  color: const Color(0xff8A8A8F),
                ),
              ),
              Text(
                'Freeship',
                style: TextStyles.fontsize14weight400.copyWith(
                  color: const Color(0xff000000),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: TextStyles.fontsize20weight700.copyWith(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              Text(
                '\$110',
                style: TextStyles.fontsize20weight700.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20), // 👈 عشان آخر عنصر ميدخلش في الـ overflow
        ],
      ),
    );
  }
}
