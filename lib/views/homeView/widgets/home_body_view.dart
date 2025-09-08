import 'package:flutter/material.dart';
import 'package:mentorship/models/product_model.dart';
import 'package:mentorship/utils/constants/app_assets.dart';
import 'package:mentorship/views/homeView/widgets/category_selector.dart';
import 'package:mentorship/views/homeView/widgets/banner_widget.dart';
import 'package:mentorship/views/homeView/widgets/product_card.dart';
import 'package:mentorship/views/homeView/widgets/recommended_card.dart';
import 'package:mentorship/views/homeView/widgets/highlight_some.dart';
import 'package:mentorship/views/homeView/widgets/offer_product.dart';

class HomeBodyView extends StatefulWidget {
  const HomeBodyView({super.key});

  @override
  State<HomeBodyView> createState() => _HomeBodyViewState();
}

class _HomeBodyViewState extends State<HomeBodyView> {
  int isActiveIndex = 0;

  final List<String> categories = ['Women', 'Man', 'Accessories', 'Beauity'];
  final List<IconData> categoriesIcons = [
    Icons.female_outlined,
    Icons.male_outlined,
    Icons.medical_information,
    Icons.east_outlined,
  ];
  final List<ProductModel> products = [
    ProductModel(
      name: 'Turtleneck Sweater',
      price: r'$ 39.99',
      image: Assets.assetsImagesPerson1,
    ),
    ProductModel(
      name: 'Long Sleeve Dress',
      price: r'$ 45.99',
      image: Assets.assetsImagesPerson3,
    ),
    ProductModel(
      name: 'Turtleneck Sweater',
      price: r'$ 39.99',
      image: Assets.assetsImagesPerson2,
    ),
    ProductModel(
      name: 'Long Sleeve Dress',
      price: r'$ 39.99',
      image: Assets.assetsImagesPerson1,
    ),
  ];

  final List<ProductModel> recommended = [
    ProductModel(
      name: 'White fashion hoodie',
      price: r'$ 39.99',
      image: Assets.assetsImagesPerson1,
    ),
    ProductModel(
      name: 'Cotton T-shirt',
      price: r'$ 45.99',
      image: Assets.assetsImagesPerson3,
    ),
    ProductModel(
      name: 'Turtleneck Sweater',
      price: r'$ 39.99',
      image: Assets.assetsImagesPerson2,
    ),
    ProductModel(
      name: 'Long Sleeve Dress',
      price: r'$ 39.99',
      image: Assets.assetsImagesPerson1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 35),
          CategorySelector(
            categories: categories,
            icons: categoriesIcons,
            activeIndex: isActiveIndex,
            onTap: (index) {
              setState(() {
                isActiveIndex = index;
              });
            },
          ),
          const SizedBox(height: 25),
          const BannerWidget(
            image: Assets.assetsImagesBannerImage,
            text: '''Autumn
Collection 
2022''',
          ),
          const SizedBox(height: 20),
          const highlightSome(highlight: 'Feature Products'),
          const SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: products.map((p) => ProductCard(product: p)).toList(),
            ),
          ),
          const SizedBox(height: 16),
          const offerProduct(
            image: Assets.assetsImagesBannerSecondImage,
            subTitle: '''HANG OUTs
& PARTY''',
            title: 'NEW COLLECTION',
          ),
          const SizedBox(height: 16),
          const highlightSome(highlight: 'Recommend'),
          const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: recommended
                  .map((p) => RecommendedCard(product: p))
                  .toList(),
            ),
          ),
          const SizedBox(height: 30),
          const highlightSome(highlight: 'Top Collection'),
          const SizedBox(height: 16),
          const offerProduct(
            image: Assets.assetsImagesBannerFourthImage,
            subTitle: '''FOR SLIM 
& BEAUTY''',
            title: 'Sale up to 40%',
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
