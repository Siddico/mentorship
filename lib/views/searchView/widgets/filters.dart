import 'package:flutter/material.dart';
import 'package:mentorship/views/searchView/widgets/category_filter.dart';
import 'package:mentorship/views/searchView/widgets/color_filter.dart';
import 'package:mentorship/views/searchView/widgets/discount_filter.dart';
import 'package:mentorship/views/searchView/widgets/price_filter.dart';
import 'package:mentorship/views/searchView/widgets/rating_filter.dart';

class FilterScreenContent extends StatefulWidget {
  const FilterScreenContent({super.key});

  @override
  State<FilterScreenContent> createState() => _FilterScreenContentState();
}

class _FilterScreenContentState extends State<FilterScreenContent> {
  // State variables for the filters
  RangeValues _priceRange = const RangeValues(10, 80);
  String? _selectedColor;
  int? _selectedRating;
  String? _selectedCategory;
  List<String> _selectedDiscounts = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          // Custom header for the drawer
          Padding(
            padding: const EdgeInsets.only(
              top: 40.0,
              left: 16.0,
              right: 16.0,
              bottom: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filter',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PriceFilter(
                    initialRange: _priceRange,
                    onChanged: (newRange) {
                      setState(() => _priceRange = newRange);
                    },
                  ),
                  const SizedBox(height: 24),

                  ColorFilterrr(
                    selectedColor: _selectedColor,
                    onColorSelected: (color) {
                      setState(() => _selectedColor = color);
                    },
                  ),
                  const SizedBox(height: 24),
                  RatingFilter(
                    selectedRating: _selectedRating,
                    onRatingSelected: (rating) {
                      setState(() => _selectedRating = rating);
                    },
                  ),
                  const SizedBox(height: 24),
                  CategoryFilter(
                    selectedCategory: _selectedCategory,
                    onCategorySelected: (category) {
                      setState(() => _selectedCategory = category);
                    },
                  ),
                  const SizedBox(height: 24),
                  DiscountFilter(
                    selectedDiscounts: _selectedDiscounts,
                    onDiscountsChanged: (discounts) {
                      setState(() => _selectedDiscounts = discounts);
                    },
                  ),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ),
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                // Reset all filters
                setState(() {
                  _priceRange = const RangeValues(10, 80);
                  _selectedColor = null;
                  _selectedRating = null;
                  _selectedCategory = null;
                  _selectedDiscounts = [];
                });
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                side: const BorderSide(color: Colors.black),
              ),
              child: const Text('Reset', style: TextStyle(color: Colors.black)),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                // Apply filters and navigate back
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text('Apply', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
