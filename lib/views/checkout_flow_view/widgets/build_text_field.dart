import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

Widget buildTextField(String label) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: SizedBox(
      height: 45,
      child: TextField(
        decoration: InputDecoration(
          hoverColor: Color(0xffF1F2F3),
          labelText: '$label *',
          hintStyle: TextStyles.fontsize14weight400.copyWith(
            fontWeight: FontWeight.w500,
            color: Color(0xff777E90),
          ),
          labelStyle: TextStyles.fontsize14weight400.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xff1D1F22),
          ),
          // border: const OutlineInputBorder(),
        ),
      ),
    ),
  );
}
