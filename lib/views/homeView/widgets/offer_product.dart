import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class offerProduct extends StatelessWidget {
  const offerProduct({
    super.key,
    required this.image,
    required this.subTitle,
    required this.title,
  });
  final String title, subTitle, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(color: Color(0xffF8F8FA)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: TextStyles.fontsize14weight400.copyWith(
                    fontSize: 12,
                    color: Color(0xff777E90),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '''$subTitle''',
                  style: TextStyles.fontsize14weight400.copyWith(
                    fontSize: 20,
                    color: Color(0xff353945),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              image,
              // height: 250,
              // fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
