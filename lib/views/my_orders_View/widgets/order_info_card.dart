import 'package:flutter/material.dart';
import 'package:mentorship/models/order_data_model.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class OrderInfoCard extends StatelessWidget {
  final Order order;

  const OrderInfoCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildInfoRow('Order number', order.orderNumber),
            _buildInfoRow('Tracking Number', order.trackingNumber),
            _buildInfoRow('Delivery address', order.deliveryAddress),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyles.fontsize14weight400.copyWith(
              color: Color(0xff121420).withOpacity(.5),
              fontSize: 12,
            ),
          ),
          Text(
            value,
            style: TextStyles.fontsize14weight400.copyWith(
              color: Color(0xff23262F),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
