import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class TimelineItem extends StatelessWidget {
  final String title;
  final String date;
  final bool isCompleted;
  final bool isFirst;
  final bool isLast;

  const TimelineItem({
    super.key,
    required this.title,
    required this.date,
    this.isCompleted = false,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildIndicatorLine(),
          const SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        // style: TextStyle(
                        // fontWeight: isCompleted
                        //     ? FontWeight.bold
                        //     : FontWeight.normal,

                        // ),
                        style: TextStyles.fontsize14weight400.copyWith(
                          fontSize: 12,
                          color: Color(0xff474340),
                        ),
                      ),
                      Text(
                        date,
                        style: TextStyles.fontsize14weight400.copyWith(
                          fontSize: 12,
                          color: Color(0xff4743404D).withOpacity(.3),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicatorLine() {
    return Column(
      children: [
        if (!isFirst)
          Expanded(
            child: Container(
              width: 2,
              color: isCompleted ? Colors.black : Colors.grey,
            ),
          ),
        Icon(
          Icons.circle,
          size: 16,
          color: isCompleted ? Colors.black : Colors.grey,
        ),
        if (!isLast)
          Expanded(
            child: Container(
              width: 2,
              color: isCompleted ? Colors.black : Colors.grey,
            ),
          ),
      ],
    );
  }
}
