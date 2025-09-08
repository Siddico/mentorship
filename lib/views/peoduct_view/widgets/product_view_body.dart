import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/views/peoduct_view/widgets/add_to_car_bar.dart';
import 'package:mentorship/views/peoduct_view/widgets/collapsible_section.dart';
import 'package:mentorship/views/peoduct_view/widgets/description_content.dart';
import 'package:mentorship/views/peoduct_view/widgets/product_header.dart';
import 'package:mentorship/views/peoduct_view/widgets/product_image_carousel.dart';
import 'package:mentorship/views/peoduct_view/widgets/review_content.dart';
import 'package:mentorship/views/peoduct_view/widgets/similar_product_content.dart';

class ProductViewBody extends StatefulWidget {
  const ProductViewBody({super.key});

  @override
  State<ProductViewBody> createState() => _ProductViewBodyState();
}

class _ProductViewBodyState extends State<ProductViewBody> {
  bool _isDescriptionExpanded = false;

  bool _isReviewsExpanded = true;

  bool _isSimilarProductsExpanded = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImageCarousel(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const productHeader(),
                const Divider(height: 30, color: Colors.grey),
                CollapsibleSection(
                  title: 'Description',
                  isExpanded: _isDescriptionExpanded,
                  onTap: () {
                    setState(() {
                      _isDescriptionExpanded = !_isDescriptionExpanded;
                    });
                  },
                  child: const DescriptionContent(),
                ),
                const Divider(height: 30, color: Colors.grey),
                CollapsibleSection(
                  title: 'Reviews',
                  isExpanded: _isReviewsExpanded,
                  onTap: () {
                    setState(() {
                      _isReviewsExpanded = !_isReviewsExpanded;
                    });
                  },
                  child: const ReviewsContent(),
                ),
                const Divider(height: 30, color: Colors.grey),
                CollapsibleSection(
                  title: 'Similar Product',
                  isExpanded: _isSimilarProductsExpanded,
                  onTap: () {
                    setState(() {
                      _isSimilarProductsExpanded = !_isSimilarProductsExpanded;
                    });
                  },
                  child: const SimilarProductsContent(),
                ),
              ],
            ),
          ),
          SizedBox(height: 125),
          AddToCartBar(),
        ],
      ),
    );
  }
}
