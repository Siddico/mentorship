import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final double price;
  final double oldPrice;
  final double rating;
  final int reviewCount;
  final String imageUrl;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.oldPrice,
    required this.rating,
    required this.reviewCount,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 252, 251, 251),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // The image section, often using Stack to overlay the heart icon
          Expanded(
            child: Stack(
              children: [
                // In a real app, use Image.network(imageUrl) or a caching solution
                Container(
                  width: double.infinity,
                  child: Image.asset(imageUrl, fit: BoxFit.cover),
                  color: Colors.grey[200], // Placeholder for the image
                  // You would replace this with Image.network(imageUrl)
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    width: 27,
                    height: 27,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyles.fontsize14weight400.copyWith(
                    color: Color(0xff1D1F22),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      '\$$price',
                      style: TextStyles.fontsize16weight700.copyWith(
                        color: Color(0xff1D1F22),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '\$$oldPrice',
                      style: TextStyles.fontsize14weight400.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Color(0xffBEBFC4),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      '$rating ($reviewCount)',
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
