import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/app_assets.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/views/profileView/widgets/drawer_item.dart';
import 'package:mentorship/views/profileView/widgets/profile_setting_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(Assets.assetsImagesPerson1),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sunie Pham',
                      style: TextStyles.fontsize16weight700.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'sunieux@gmail.com',
                      style: TextStyles.fontsize16weight700.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          DrawerItem(
            title: 'Setting',
            icon: Icons.settings,
            selected: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProfileSettingScreen();
                  },
                ),
              );
            },
          ),
          DrawerItem(
            title: 'Support',
            icon: Icons.support_agent,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          DrawerItem(title: 'About us', icon: Icons.info_outline, onTap: () {}),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.light_mode,
                            size: 16,
                            color: Color(0xff2c2f32),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Light',
                            style: TextStyles.fontsize14weight400.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff2c2f32),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dark_mode,
                            size: 16,
                            color: Color.fromARGB(255, 88, 95, 102),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Dark',
                            style: TextStyles.fontsize14weight400.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 88, 95, 102),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
