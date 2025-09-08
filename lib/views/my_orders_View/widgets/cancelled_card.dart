import 'package:flutter/material.dart';
import 'package:mentorship/models/order_data_model.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class CanceledCard extends StatelessWidget {
  const CanceledCard({super.key, required Order order});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: Colors.red[50],
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.cancel, color: Colors.red, size: 32),
              SizedBox(height: 8),
              Text(
                'Your order has been canceled',
                style: TextStyles.fontsize16weight700.copyWith(
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
