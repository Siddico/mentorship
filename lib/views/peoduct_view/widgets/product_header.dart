import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class productHeader extends StatelessWidget {
  const productHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sportwear Set',
                style: TextStyles.fontsize16weight700.copyWith(
                  fontSize: 18,
                  color: Color(0xff1D1F22),
                ),
              ),

              Row(
                children: [
                  Icon(Icons.star, color: Color(0xff508a7b)),
                  SizedBox(width: 8),
                  Icon(Icons.star, color: Color(0xff508a7b)),
                  SizedBox(width: 8),
                  Icon(Icons.star, color: Color(0xff508a7b)),
                  SizedBox(width: 8),
                  Icon(Icons.star, color: Color(0xff508a7b)),
                  SizedBox(width: 8),
                  Icon(Icons.star, color: Color(0xff508a7b)),
                  SizedBox(width: 20),
                  Text(
                    '(83)',
                    style: TextStyles.fontsize14weight400.copyWith(
                      fontSize: 12,
                      color: Color(0xff1d1f22),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            r'$ 80.00',
            style: TextStyles.fontsize25weight700.copyWith(
              color: Colors.black,
              fontSize: 26,
            ),
          ),
        ],
      ),
    );
  }
}
