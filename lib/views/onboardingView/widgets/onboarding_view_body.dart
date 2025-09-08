import 'package:flutter/material.dart';
import 'package:mentorship/models/onboarding_model.dart';
import 'package:mentorship/utils/constants/app_assets.dart';
import 'package:mentorship/utils/widgets/custom_button.dart';
import 'package:mentorship/views/loginView/login_view.dart';
import 'package:mentorship/views/onboardingView/widgets/onboarding_view_body_inside.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingViewBody extends StatefulWidget {
  OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final List<OnboardingModel> onboardingData = [
    OnboardingModel(
      title: 'Discover something new',
      description: 'Special new arrivals just for you',
      image: Assets.assetsImagesFirstonboarding,
    ),
    OnboardingModel(
      title: 'Update trendy outfit',
      description: 'Favorite brands and hottest trends',
      image: Assets.assetsImagesSecondonboarding,
    ),
    OnboardingModel(
      title: 'Explore your true style',
      description: 'Relax and let us bring the style to you',
      image: Assets.assetsImagesThirdonboarding,
    ),
  ];

  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background color for the top section, positioned first
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          // You can also use a Container with a curved border to match the design
          child: Container(
            height: MediaQuery.of(context).size.height * 0.65,
            color: Colors.white, // Top white section
          ),
        ),
        // Positioned at the bottom to match your original design
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            color: const Color(0xff464447), // Bottom dark section
          ),
        ),

        // PageView.builder is placed here, before the other elements
        // This ensures the page content is on top of the background colors
        PageView.builder(
          controller: _pageController,
          itemCount: onboardingData.length,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          itemBuilder: (context, index) {
            final screen = onboardingData[index];
            return AnimatedBuilder(
              animation: _pageController,
              builder: (context, child) {
                double value = 1.0;
                if (_pageController.position.haveDimensions) {
                  value = _pageController.page! - index;
                  value = (1 - (value.abs() * 0.25)).clamp(0.0, 1.0);
                }
                return Transform.scale(scale: value, child: child);
              },
              child: OnboardingPage(screen: screen),
            );
          },
        ),

        // Page indicator on top
        Positioned(
          bottom: 160,
          left: 0,
          right: 0,
          child: Center(
            child: SmoothPageIndicator(
              controller: _pageController,
              count: onboardingData.length,
              effect: const WormEffect(
                activeDotColor: Colors.black,
                dotColor: Color(0xffE7E8E9),
                dotHeight: 8.0,
                dotWidth: 8.0,
                spacing: 12.0,
              ),
            ),
          ),
        ),

        // Custom button on top
        Positioned(
          left: 75,
          right: 75,
          bottom: 80,

          child: CustomButton(
            text: 'Shopping now',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginView();
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
