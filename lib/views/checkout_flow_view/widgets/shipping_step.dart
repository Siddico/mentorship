import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/views/checkout_flow_view/widgets/build_text_field.dart';

class ShippingStep extends StatelessWidget {
  final VoidCallback onContinue;

  const ShippingStep({super.key, required this.onContinue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: [
          Row(
            children: [
              const Icon(Icons.location_on, color: Colors.black),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(height: 1, color: Colors.grey),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(height: 1, color: Colors.grey),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(height: 1, color: Colors.grey),
                ),
              ),
              const Icon(Icons.check_circle_outline, color: Colors.black),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'STEP 1',
            style: TextStyles.fontsize14weight400.copyWith(
              fontSize: 11,
              color: const Color(0xff1D1F22),
            ),
          ),
          Text(
            'Shipping',
            style: TextStyles.fontsize14weight400.copyWith(
              fontSize: 25,
              color: const Color(0xff1D1F22),
            ),
          ),
          const SizedBox(height: 15),
          buildTextField('First name'),
          buildTextField('Last name'),
          buildTextField('Country'),
          buildTextField('Street name'),
          buildTextField('City'),
          buildTextField('State / Province'),
          buildTextField('Zip-code'),
          buildTextField('Phone number'),
          const SizedBox(height: 20),
          Text(
            'Shipping method',
            style: TextStyles.fontsize16weight700.copyWith(color: Colors.black),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: Row(
              children: [
                const Icon(Icons.check_circle, color: Colors.black),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Free',
                            style: TextStyles.fontsize14weight400.copyWith(
                              color: const Color(0xff1D1F22),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Delivery to home',
                            style: TextStyles.fontsize14weight400.copyWith(
                              color: const Color(0xff737680),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Delivery from 3 to 7 business days',
                        style: TextStyles.fontsize14weight400.copyWith(
                          fontSize: 12,
                          color: const Color(0xffA3A5AD),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            height: 48,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              onPressed: onContinue,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text(
                'Continue to payment',
                style: TextStyles.fontsize16weight700.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
