import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/app_assets.dart';
import 'package:mentorship/views/profileView/widgets/board_card.dart';
import 'package:mentorship/views/profileView/widgets/item_card.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('My Wishlist'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.black,
          tabs: const [
            Tab(text: 'Boards'),
            Tab(text: 'All Items'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [_buildBoardsView(), _buildAllItemsView()],
      ),
    );
  }

  Widget _buildBoardsView() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          BoardCard(
            title: 'Going out outfits',
            itemCount: 36,
            imageUrls: const [
              Assets.assetsImagesPerson1,
              Assets.assetsImagesPerson2,
              Assets.assetsImagesPerson3,
              Assets.assetsImagesPerson1,
              Assets.assetsImagesPerson2,
              Assets.assetsImagesPerson3,
            ],
            onTap: () {},
          ),
          const SizedBox(height: 24),
          BoardCard(
            title: 'Office Fashion',
            itemCount: 20,
            imageUrls: const [
              Assets.assetsImagesPerson1,
              Assets.assetsImagesPerson2,
              Assets.assetsImagesPerson3,
              Assets.assetsImagesPerson1,
              Assets.assetsImagesPerson2,
              Assets.assetsImagesPerson3,
            ],
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildAllItemsView() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.6,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          final items = [
            {
              'name': 'Front Tie Mini Dress',
              'price': 59.00,
              'oldPrice': 0.0,
              'rating': 4.5,
              'reviews': 38,
              'image': Assets.assetsImagesPerson1,
            },
            {
              'name': 'Linen Dress',
              'price': 52.00,
              'oldPrice': 80.00,
              'rating': 4.0,
              'reviews': 64,
              'image': Assets.assetsImagesPerson2,
            },
            {
              'name': 'Ohara Dress',
              'price': 85.00,
              'oldPrice': 0.0,
              'rating': 4.5,
              'reviews': 50,
              'image': Assets.assetsImagesPerson3,
            },
            {
              'name': 'Tie Back Mini Dress',
              'price': 67.00,
              'oldPrice': 0.0,
              'rating': 4.0,
              'reviews': 39,
              'image': Assets.assetsImagesPerson1,
            },
          ];
          final item = items[index];
          return ItemCard(
            name: item['name'] as String,
            price: item['price'] as double,
            oldPrice: item['oldPrice'] as double,
            rating: item['rating'] as double,
            reviews: item['reviews'] as int,
            imageUrl: item['image'] as String,
          );
        },
      ),
    );
  }
}
