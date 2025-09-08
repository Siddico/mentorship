import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class CartItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;
  final String size;
  final String color;
  final int quantity;

  const CartItem({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
    required this.size,
    required this.color,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Image.asset(
                imagePath,
                width: 108,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: TextStyles.fontsize16weight700.copyWith(
                          fontSize: 13,
                          color: Color(0xff1D1F22),
                        ),
                      ),
                      Checkbox(
                        value: true,
                        onChanged: (bool? value) {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        activeColor: Color(0xff508A7B),
                      ),
                    ],
                  ),
                  Text(
                    price,
                    style: TextStyles.fontsize16weight700.copyWith(
                      color: Color(0xff1D1F22),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Size: $size | Color: $color',
                        style: TextStyles.fontsize14weight400.copyWith(
                          fontSize: 10,
                          color: Color(0xff8A8A8F),
                        ),
                      ),
                      Container(
                        height: 32,

                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]!),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.remove, size: 18),
                            SizedBox(width: 8),
                            Text(
                              quantity.toString(),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.add, size: 18),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
