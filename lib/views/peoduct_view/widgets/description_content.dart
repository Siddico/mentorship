import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class DescriptionContent extends StatelessWidget {
  const DescriptionContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Text(
        'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Street fashion today. The top is oversized in fit and style, may need to size down. Read More',
        style: TextStyles.fontsize14weight400.copyWith(
          color: Color(0xff1D1F22),
          fontSize: 12,
        ),
      ),
    );
  }
}
