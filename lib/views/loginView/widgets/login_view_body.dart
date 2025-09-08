import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/app_assets.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/utils/widgets/custom_button.dart';
import 'package:mentorship/views/homeView/home_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 45),
            SizedBox(
              child: Text(
                '''Log into
your account''',
                style: TextStyles.fontsize25weight700.copyWith(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 60),

            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email address',
                hintStyle: TextStyles.fontsize14weight400.copyWith(
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 35),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',

                hintStyle: TextStyles.fontsize14weight400.copyWith(
                  fontWeight: FontWeight.w300,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyles.fontsize14weight400.copyWith(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Center(
              child: CustomButton(
                text: 'Log In',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeView();
                      },
                    ),
                  );
                },
                color: Color(0xff2D201C),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Text(
                'or log in with',
                style: TextStyles.fontsize14weight400.copyWith(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),

            SizedBox(height: 45),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1, color: Color(0xff332218)),
                  ),
                  child: Image.asset(
                    Assets.assetsImagesApple,
                    width: 22,
                    height: 22,
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1, color: Color(0xff332218)),
                  ),
                  child: Image.asset(
                    Assets.assetsImagesGoogle,
                    width: 22,
                    height: 22,
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1, color: Color(0xff332218)),
                  ),
                  child: Image.asset(
                    Assets.assetsImagesFacebook,
                    width: 22,
                    height: 22,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
