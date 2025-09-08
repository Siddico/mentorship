import 'package:flutter/material.dart';
import 'package:mentorship/views/profileView/widgets/custom_profile_drawer.dart';
import 'package:mentorship/views/profileView/widgets/menu_card.dart';
import 'package:mentorship/views/profileView/widgets/profile_header.dart';
import 'package:mentorship/views/profileView/widgets/setting_view.dart';
import 'package:mentorship/views/profileView/widgets/wishlist_view.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      // key: _scaffoldKey,
      // drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          children: [
            const ProfileHeader(name: 'Sunie Pham', email: 'sunieux@gmail.com'),
            const SizedBox(height: 32),
            MenuCard(
              title: 'My Wishlist',
              icon: Icons.favorite_border,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WishlistScreen();
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            MenuCard(
              title: 'Log out',
              icon: Icons.logout,
              onTap: () {
                // TODO: Implement log out logic
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Logged out')));
              },
            ),
            // The empty space in the original image is represented by the rest of the column's space
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
