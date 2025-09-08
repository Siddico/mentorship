import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/views/cart_View/cart_view.dart';

class AddToCartBar extends StatelessWidget {
  const AddToCartBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        color: Colors.black87,
      ),
      height: 70,

      child: Center(
        child: TextButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return CartView();
                },
              ),
            );
          },
          icon: const Icon(
            Icons.shopping_bag_outlined,
            size: 18,
            color: Colors.white,
          ),
          label: Text(
            'Add To Cart',
            style: TextStyles.fontsize16weight700.copyWith(
              fontSize: 18,
              color: Color(0xffffffff),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
