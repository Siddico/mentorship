import 'package:flutter/material.dart';

class ColorFilterrr extends StatelessWidget {
  final String? selectedColor;
  final ValueChanged<String> onColorSelected;

  const ColorFilterrr({
    super.key,
    required this.selectedColor,
    required this.onColorSelected,
  });

  @override
  Widget build(BuildContext context) {
    const List<String> colors = [
      'orange',
      'red',
      'black',
      'teal',
      'white',
      'brown',
      'pink',
    ];

    Color getColor(String colorName) {
      switch (colorName) {
        case 'orange':
          return Colors.orange;
        case 'red':
          return Colors.red;
        case 'black':
          return Colors.black;
        case 'teal':
          return Colors.teal;
        case 'white':
          return Colors.white;
        case 'brown':
          return Colors.brown;
        case 'pink':
          return Colors.pink;
        default:
          return Colors.transparent;
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Color',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff33302E),
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          children: colors.map((colorName) {
            final color = getColor(colorName);
            final isSelected = selectedColor == colorName;
            return GestureDetector(
              onTap: () => onColorSelected(colorName),
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected ? Colors.blue : Colors.grey.shade400,
                    width: isSelected ? 3 : 1,
                  ),
                ),
                child: isSelected
                    ? const Center(
                        child: Icon(Icons.check, color: Colors.white, size: 20),
                      )
                    : null,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
