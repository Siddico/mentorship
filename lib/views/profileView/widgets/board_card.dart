import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class BoardCard extends StatelessWidget {
  final String title;
  final int itemCount;
  final List<String> imageUrls;
  final VoidCallback onTap;

  const BoardCard({
    super.key,
    required this.title,
    required this.itemCount,
    required this.imageUrls,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildImageGrid(),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyles.fontsize20weight700.copyWith(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '$itemCount items',
                      style: TextStyles.fontsize20weight700.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff8A8A8F),
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImageGrid() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        height: 200,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(imageUrls[0], fit: BoxFit.cover),
            ),
            const SizedBox(width: 4),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(imageUrls[1], fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Image.asset(imageUrls[2], fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(imageUrls[3], fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Image.asset(imageUrls[4], fit: BoxFit.cover),
                        ),
                      ],
                    ),
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
