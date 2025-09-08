import 'package:flutter/material.dart';

class DiscountFilter extends StatelessWidget {
  final List<String> selectedDiscounts;
  final ValueChanged<List<String>> onDiscountsChanged;

  const DiscountFilter({
    super.key,
    required this.selectedDiscounts,
    required this.onDiscountsChanged,
  });

  @override
  Widget build(BuildContext context) {
    const List<String> discounts = ['50% off', '40% off', '30% off', '25% off'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Discount',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff33302E),
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: discounts.map((discount) {
            final isSelected = selectedDiscounts.contains(discount);
            return FilterChip(
              label: Text(discount),
              selected: isSelected,
              onSelected: (bool selected) {
                List<String> newSelection = List.from(selectedDiscounts);
                if (selected) {
                  newSelection.add(discount);
                } else {
                  newSelection.remove(discount);
                }
                onDiscountsChanged(newSelection);
              },
              selectedColor: Colors.black,
              labelStyle: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
              ),
              checkmarkColor: isSelected ? Colors.white : Colors.black,
              backgroundColor: Colors.grey.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: isSelected ? Colors.black : Colors.transparent,
                ),
              ),
              avatar: isSelected
                  ? const Icon(Icons.check, size: 16, color: Colors.white)
                  : null,
            );
          }).toList(),
        ),
      ],
    );
  }
}
