import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/app_assets.dart';
import 'package:mentorship/views/searchView/widgets/product_card.dart';

Widget buildProductGrid() {
  // This is a sample list of product data. In a real app, you'd fetch this.
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Linen Dress',
      'price': 52.00,
      'oldPrice': 90.00,
      'rating': 4.5,
      'reviewCount': 64,
      'image': Assets.assetsImagesWahdaneswan1, // Placeholder
    },
    {
      'name': 'Filted Waist Dress',
      'price': 47.99,
      'oldPrice': 82.00,
      'rating': 4.0,
      'reviewCount': 53,
      'image': Assets.assetsImagesWahdaneswan2, // Placeholder
    },
    {
      'name': 'Maxi Dress',
      'price': 75.00,
      'oldPrice': 100.00,
      'rating': 5.0,
      'reviewCount': 89,
      'image': Assets.assetsImagesWahdaneswan3, // Placeholder
    },
    {
      'name': 'Front Tie Mini Dress',
      'price': 55.00,
      'oldPrice': 70.00,
      'rating': 4.5,
      'reviewCount': 72,
      'image': Assets.assetsImagesWahdaneswan1, // Placeholder
    },
    {
      'name': 'V-Neck Dress',
      'price': 60.00,
      'oldPrice': 85.00,
      'rating': 4.2,
      'reviewCount': 45,
      'image': Assets.assetsImagesWahdaneswan2, // Placeholder
    },
  ];

  return GridView.builder(
    shrinkWrap: true, // Prevents infinite height error
    physics:
        const NeverScrollableScrollPhysics(), // Scroll handled by SingleChildScrollView
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 24.0,
      childAspectRatio: 0.6, // Adjust this ratio to control card height
    ),
    itemCount: products.length,
    itemBuilder: (context, index) {
      final product = products[index];
      return ProductCard(
        name: product['name'],
        price: product['price'],
        oldPrice: product['oldPrice'],
        rating: product['rating'],
        reviewCount: product['reviewCount'],
        imageUrl: product['image'],
      );
    },
  );
}
