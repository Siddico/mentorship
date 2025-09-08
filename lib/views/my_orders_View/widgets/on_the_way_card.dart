import 'package:flutter/material.dart';
import 'package:mentorship/models/order_data_model.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/views/my_orders_View/widgets/track_order_view.dart';

class OnTheWayCard extends StatelessWidget {
  final Order order;

  const OnTheWayCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => TrackOrderView(order: order)),
        );
      },
      child: SizedBox(
        height: 100,
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: Color(0xff575757),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your order is on the way',
                      style: TextStyles.fontsize16weight700.copyWith(
                        color: Color(0xffffffff),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Click here to track your order',
                      style: TextStyles.fontsize16weight700.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.car_crash_outlined, color: Colors.white, size: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
