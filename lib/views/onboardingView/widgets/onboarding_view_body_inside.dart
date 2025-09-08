import 'package:flutter/material.dart';
import 'package:mentorship/models/onboarding_model.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingModel screen;

  OnboardingPage({required this.screen});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Title and Subtitle
        Column(
          children: [
            SizedBox(height: 125),
            Text(screen.title, style: TextStyles.fontsize20weight700),
            const SizedBox(height: 8),
            Text(screen.description, style: TextStyles.fontsize14weight400),
          ],
        ),
        const SizedBox(height: 50),
        // Onboarding Image
        Container(
          width: 240,
          height: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(screen.image, fit: BoxFit.fitHeight),
          ),
        ),
      ],
    );
  }
}
