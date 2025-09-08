import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/views/my_orders_View/widgets/feedback_dialog.dart';

class RateProductView extends StatefulWidget {
  const RateProductView({super.key});

  @override
  State<RateProductView> createState() => _RateProductViewState();
}

class _RateProductViewState extends State<RateProductView> {
  int _rating = 0;
  final TextEditingController _reviewController = TextEditingController();
  final int _maxChars = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xff1D1F22),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: Text(
          'Rate Product',
          style: TextStyles.fontsize16weight700.copyWith(
            fontSize: 18,
            color: Color(0xff1D1F22),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildStarRating(),
            const SizedBox(height: 20),
            _buildReviewField(),
            const Spacer(),
            _buildSubmitButton(),
            SizedBox(height: 125),
          ],
        ),
      ),
    );
  }

  Widget _buildStarRating() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return IconButton(
          icon: Icon(
            index < _rating ? Icons.star : Icons.star_border,
            color: Colors.teal[400],
            size: 40,
          ),
          onPressed: () {
            setState(() {
              _rating = index + 1;
            });
          },
        );
      }),
    );
  }

  Widget _buildReviewField() {
    return Card(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
          controller: _reviewController,
          maxLines: 5,
          maxLength: _maxChars,
          decoration: InputDecoration(
            hintText: 'Would you like to write anything about this product?',
            hintStyle: TextStyles.fontsize14weight400.copyWith(
              fontSize: 12,
              color: Color(0xff5A5A5A),
            ),
            border: InputBorder.none,
            counterText: '${_reviewController.text.length} / $_maxChars',
            counterStyle: TextStyles.fontsize14weight400.copyWith(
              fontSize: 12,
              color: Color(0xff5A5A5A),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          _showFeedbackDialog(context);
          // Handle submission logic here
          // For example:
          // print('Rating: $_rating');
          // print('Review: ${_reviewController.text}');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
          minimumSize: const Size.fromHeight(50),
        ),
        child: Text(
          'Submit Review',
          style: TextStyles.fontsize16weight700.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

void _showFeedbackDialog(BuildContext context) {
  showDialog(
    context: context,
    // barrierDismissible: false, // يمنع الغلق بالضغط خارج البوكس
    builder: (context) => const FeedbackDialog(),
  );
}
