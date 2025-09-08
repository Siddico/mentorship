import 'package:flutter/material.dart';
import 'package:mentorship/models/order_data_model.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/views/my_orders_View/widgets/order_info_view.dart';

class OrderCard extends StatelessWidget {
  final Order order;

  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    Color statusColor = Color(0xffC50000);
    if (order.status == 'Pending') {
      statusColor = Color(0xffCF6212);
    } else if (order.status == 'Delivered') {
      statusColor = Color(0xff009254);
    }

    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 2,
      borderOnForeground: false,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order #${order.orderNumber}',
                  style: TextStyles.fontsize16weight700.copyWith(
                    fontSize: 18,
                    color: Color(0xff141416),
                  ),
                ),
                Text(
                  order.date,
                  style: TextStyles.fontsize14weight400.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff777E90),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Tracking number: ',
                  style: TextStyles.fontsize14weight400.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff777E90),
                  ),
                ),
                Text(
                  '${order.trackingNumber}',
                  style: TextStyles.fontsize14weight400.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Quantity: ',
                      style: TextStyles.fontsize14weight400.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff777E90),
                      ),
                    ),
                    Text(
                      '${order.quantity}',
                      style: TextStyles.fontsize14weight400.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Subtotal: \$',
                      style: TextStyles.fontsize14weight400.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff777E90),
                      ),
                    ),
                    Text(
                      '${order.subtotal.toStringAsFixed(0)}',
                      style: TextStyles.fontsize14weight400.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  order.status.toUpperCase(),
                  style: TextStyle(
                    color: statusColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 35,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return OrderInfoView(order: order);
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      // foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.5),
                        side: BorderSide(color: Color(0xff777E90)),
                      ),
                    ),
                    child: Text(
                      'Details',
                      style: TextStyles.fontsize14weight400.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
