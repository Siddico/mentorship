import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/app_assets.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/utils/widgets/custom_button.dart';
import 'package:mentorship/views/onboardingView/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Positioned.fill(child: Image.asset(Assets.assetsImagesSplashviewbackgroundd,fit: BoxFit.cover,)),
        Expanded(child: Container(
          color: Color(0xff00000080).withOpacity(.5),
        )),
        Positioned(
          bottom: 150,
          left: 0,
          right: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Welcome to GemStore!', style: TextStyles.fontsize25weight700,),
              SizedBox(height: 16,),
              Text(' The home for a fashionista', style: TextStyles.fontsize16weight700,),
              SizedBox(height: 50,),
              CustomButton(text: 'Get Started', onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingView()));
              })
            ],
          ),
        ), 

      ],
    );
  }
}