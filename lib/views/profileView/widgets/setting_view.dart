import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/views/profileView/widgets/custom_profile_drawer.dart';
import 'package:mentorship/views/profileView/widgets/menu_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Setting',
          style: TextStyles.fontsize16weight700.copyWith(
            fontSize: 18,
            color: Color(0xff1D1F22),
          ),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: const CustomDrawer(), // 👈 مهم
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          children: [
            MenuCard(title: 'Language', icon: Icons.language, onTap: () {}),
            const SizedBox(height: 16),
            MenuCard(
              title: 'Terms of Use',
              icon: Icons.article_outlined,
              onTap: () {},
            ),
            const SizedBox(height: 16),
            MenuCard(
              title: 'Privacy Policy',
              icon: Icons.info_outline,
              onTap: () {},
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
