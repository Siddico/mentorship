import 'package:flutter/material.dart';
import 'package:mentorship/models/order_data_model.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/views/my_orders_View/widgets/time_line_item.dart';

class TrackOrderView extends StatelessWidget {
  const TrackOrderView({super.key, required Order order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xff1D1F22),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: Text(
          'Track Order',
          style: TextStyles.fontsize16weight700.copyWith(
            fontSize: 18,
            color: Color(0xff1D1F22),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Delivered on ',
                  style: TextStyles.fontsize14weight400.copyWith(
                    fontSize: 12,
                    color: Color(0xff12142080).withOpacity(.5),
                  ),
                ),
                Text(
                  '15.05.21',
                  style: TextStyles.fontsize14weight400.copyWith(
                    fontSize: 12,
                    color: Color(0xff23262F),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  'Tracking Number : ',
                  style: TextStyles.fontsize14weight400.copyWith(
                    fontSize: 12,
                    color: Color(0xff12142080).withOpacity(.5),
                  ),
                ),
                Text(
                  'IK287368838',
                  style: TextStyles.fontsize14weight400.copyWith(
                    color: Color(0xff23262F),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),
            _buildTimeline(),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeline() {
    return Column(
      children: const [
        TimelineItem(
          title: 'Parcel is successfully delivered',
          date: '15 May 10:20',
          isFirst: true,
          isCompleted: true,
        ),
        TimelineItem(
          title: 'Parcel is out for delivery',
          date: '14 May 08:00',
          isCompleted: true,
        ),
        TimelineItem(
          title: 'Parcel is received at delivery Branch',
          date: '13 May 17:25',
          isCompleted: true,
        ),
        TimelineItem(
          title: 'Parcel is in transit',
          date: '13 May 07:00',
          isCompleted: true,
        ),
        TimelineItem(
          title: 'Sender has shipped your parcel',
          date: '12 May 14:25',
          isCompleted: true,
        ),
        TimelineItem(
          title: 'Sender is preparing to ship your order',
          date: '12 May 10:01',
          isLast: true,
          isCompleted: true,
        ),
      ],
    );
  }
}
