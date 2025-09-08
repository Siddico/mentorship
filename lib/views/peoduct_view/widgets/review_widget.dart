import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/app_assets.dart';
import 'package:mentorship/views/peoduct_view/widgets/star_rating.dart';

class ReviewWidget extends StatelessWidget {
  final String name;
  final String time;
  final String reviewText;

  const ReviewWidget({
    super.key,
    required this.name,
    required this.time,
    required this.reviewText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(Assets.assetsImagesPerson3),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        time,
                        style: const TextStyle(color: Color(0xff33302E40)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const StarRating(rating: 4.9),
                  const SizedBox(height: 5),
                  Text(reviewText),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
