import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class BuildCheckoutAppBar extends StatelessWidget {
  final int currentStep;

  const BuildCheckoutAppBar({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Text(
            'Check out',
            style: TextStyles.fontsize20weight700.copyWith(
              fontSize: 18,
              color: Color(0xff1D1F22),
            ),
          ),
          const SizedBox(width: 40),
        ],
      ),
    );
  }
}
