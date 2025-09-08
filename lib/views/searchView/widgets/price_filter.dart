import 'package:flutter/material.dart';

class PriceFilter extends StatelessWidget {
  final RangeValues initialRange;
  final ValueChanged<RangeValues> onChanged;

  const PriceFilter({
    super.key,
    required this.initialRange,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Price',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff33302E),
          ),
        ),
        RangeSlider(
          values: initialRange,
          min: 0,
          max: 100,
          divisions: 100,
          labels: RangeLabels(
            '\$${initialRange.start.round()}',
            '\$${initialRange.end.round()}',
          ),
          onChanged: onChanged,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$${initialRange.start.round()}'),
              Text('\$${initialRange.end.round()}'),
            ],
          ),
        ),
      ],
    );
  }
}
