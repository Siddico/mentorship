import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  final String image;
  final String text;

  const BannerWidget({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: double.infinity,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 28, right: 24),
            child: SizedBox(
              width: 100,
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
