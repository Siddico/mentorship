import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/views/homeView/widgets/home_body_view.dart';
import 'package:mentorship/views/my_orders_View/widgets/myorders_view_body.dart';
import 'package:mentorship/views/profileView/widgets/custom_profile_drawer.dart';
import 'package:mentorship/views/profileView/widgets/profile_view_body.dart';
import 'package:mentorship/views/searchView/widgets/filters.dart';
import 'package:mentorship/views/searchView/widgets/search_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

int _currentIndex = 0;
final List<Widget> _screensbody = [
  const HomeBodyView(),
  SearchViewBody(),
  MyordersViewBody(),
  ProfileViewBody(),
];
final List<String> _titles = [
  'Gem Store',
  'Discover',
  'My Orders',
  'Wish List',
];

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(child: FilterScreenContent()),
      // extendBodyBehindAppBar: Drawer(),
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          '${_titles[_currentIndex]}',
          style: TextStyles.fontsize20weight700,
        ),
        leading: IconButton(
          icon: Icon(Icons.menu_rounded),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: [Icon(Icons.notifications), SizedBox(width: 16)],
      ),
      body: _screensbody[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },

          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Color(0xffE6E8EC),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: "Shopping",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
          ],
        ),
      ),
    );
  }
}
