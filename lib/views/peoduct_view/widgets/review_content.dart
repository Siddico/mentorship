import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/views/peoduct_view/widgets/review_widget.dart';

class ReviewsContent extends StatelessWidget {
  const ReviewsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  '4.9',
                  style: TextStyles.fontsize25weight700.copyWith(
                    color: Color(0xff231F20),
                    fontSize: 40,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'OUT OF 5',
                  style: TextStyles.fontsize14weight400.copyWith(
                    color: Color(0xff8A8A8F),
                    fontSize: 11,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(5, (index) {
                    return Icon(Icons.star, color: Color(0xff508A7B), size: 19);
                  }),
                ),
                SizedBox(height: 8),
                Text(
                  '83 rating',
                  style: TextStyles.fontsize14weight400.copyWith(
                    color: Color(0xff8A8A8F),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        const ReviewWidget(
          name: 'Jennifer Rose',
          time: '5m ago',
          reviewText:
              'I love it. Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        ),
        const SizedBox(height: 10),
        const ReviewWidget(
          name: 'Kelly Rihana',
          time: '9m ago',
          reviewText:
              'I\'m very happy with order. It was delivered on and good quality. Recommended!',
        ),
      ],
    );
  }
}
