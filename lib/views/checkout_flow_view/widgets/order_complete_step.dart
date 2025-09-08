import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class OrderCompletedStep extends StatelessWidget {
  const OrderCompletedStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.location_on, color: Colors.black),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(height: 1, color: Colors.black),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(height: 1, color: Colors.black),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(height: 1, color: Colors.black),
                ),
              ),
              const Icon(Icons.check_circle_outline, color: Colors.black),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            'Order Completed',
            style: TextStyles.fontsize25weight700.copyWith(
              color: Color(0xff33302E),
            ),
          ),
          const SizedBox(height: 60),
          Center(
            child: const Icon(
              Icons.shopping_bag_outlined,
              size: 115,
              color: Color(0xff33302E),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              '''Thank you for your purchase.
You can view your order in \'My Orders\' section.''',
              style: TextStyles.fontsize14weight400.copyWith(
                color: Color(0xff33302E),
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const Spacer(),
          Container(
            width: double.infinity,
            height: 52,
            margin: const EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.of(context).popUntil((route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: const Text(
                'Continue shopping',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 115),
        ],
      ),
    );
  }
}
