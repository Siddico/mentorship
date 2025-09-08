import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class highlightSome extends StatelessWidget {
  const highlightSome({super.key, required this.highlight});
  final String highlight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$highlight', style: TextStyles.fontsize20weight700),
          Text(
            'Show All',
            style: TextStyles.fontsize14weight400.copyWith(
              fontSize: 13,
              color: Color(0xff9B9B9B),
            ),
          ),
        ],
      ),
    );
  }
}
