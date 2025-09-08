import 'package:flutter/material.dart';
import 'package:mentorship/views/onboardingView/onboarding_view.dart';
import 'package:mentorship/views/splashView/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());

    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardingView());

    default:
      return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(child: Text("No route defined")),
      ),
      );
    }
}
