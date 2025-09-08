import 'package:flutter/material.dart';
import 'package:mentorship/models/order_data_model.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class DeliveredCard extends StatelessWidget {
  final VoidCallback onRatePressed;

  const DeliveredCard({
    super.key,
    required this.onRatePressed,
    required Order order,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Color(0xff575757),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your order is delivered',
                  style: TextStyles.fontsize16weight700.copyWith(
                    color: Color(0xffffffff),
                  ),
                ),
                TextButton(
                  onPressed: onRatePressed,
                  child: Text(
                    'Rate product to get 5 points to collect.',
                    style: TextStyles.fontsize16weight700.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ],
            ),
            const Icon(Icons.check_circle, color: Colors.white, size: 46),
          ],
        ),
      ),
    );
  }
}
