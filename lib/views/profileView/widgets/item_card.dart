import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class ItemCard extends StatelessWidget {
  final String name;
  final double price;
  final double oldPrice;
  final double rating;
  final int reviews;
  final String imageUrl;

  const ItemCard({
    super.key,
    required this.name,
    required this.price,
    required this.oldPrice,
    required this.rating,
    required this.reviews,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        color: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.asset(
                    imageUrl,
                    height: 170,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Icon(Icons.favorite_border, color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyles.fontsize14weight400.copyWith(
                      fontSize: 12,
                      color: Color(0xff1d1f22),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        '\$${price.toStringAsFixed(2)}',
                        style: TextStyles.fontsize16weight700.copyWith(
                          color: Color(0xff1d1f22),
                        ),
                      ),
                      if (oldPrice > 0)
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            '\$${oldPrice.toStringAsFixed(2)}',
                            style: TextStyles.fontsize14weight400.copyWith(
                              fontSize: 12,
                              color: Color(0xffBEBFC4),
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xff508A7B),
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${rating.toStringAsFixed(1)}',
                        style: TextStyles.fontsize14weight400.copyWith(
                          fontSize: 12,
                          color: Color(0xff508A7B),
                        ),
                      ),
                      Text(
                        ' ($reviews)',
                        style: TextStyles.fontsize14weight400.copyWith(
                          fontSize: 10,
                          color: Color(0xff1d1f22),
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
