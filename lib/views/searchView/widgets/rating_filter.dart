import 'package:flutter/material.dart';

class RatingFilter extends StatelessWidget {
  final int? selectedRating;
  final ValueChanged<int> onRatingSelected;

  const RatingFilter({
    super.key,
    required this.selectedRating,
    required this.onRatingSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Star Rating',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff33302E),
          ),
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(5, (index) {
              final rating = index + 1;
              final isSelected = selectedRating == rating;
              return Padding(
                padding: const EdgeInsets.only(
                  right: 8.0,
                ), // Add spacing between chips
                child: ActionChip(
                  avatar: Icon(
                    Icons.star,
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                  label: Text(
                    '$rating',
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                  backgroundColor: isSelected
                      ? Colors.black
                      : Colors.grey.shade200,
                  onPressed: () => onRatingSelected(rating),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
