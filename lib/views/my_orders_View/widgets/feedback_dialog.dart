import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class FeedbackDialog extends StatelessWidget {
  const FeedbackDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: Colors.green.shade100,
              radius: 45,
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Color(0xff508A7B),
                child: const Icon(Icons.check, color: Colors.white, size: 50),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Thank you for your feedback!",
              textAlign: TextAlign.center,
              style: TextStyles.fontsize16weight700.copyWith(
                color: Color(0xff43484B),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "We appreciated your feedback.\nWe’ll use your feedback to improve your experience.",
              textAlign: TextAlign.center,
              style: TextStyles.fontsize14weight400.copyWith(
                color: Color(0xff6E768A),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0xff343434),
                ),
                child: Center(
                  child: Text(
                    'Done',
                    style: TextStyles.fontsize16weight700.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
