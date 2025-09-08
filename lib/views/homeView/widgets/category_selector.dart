import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class CategorySelector extends StatelessWidget {
  final List<String> categories;
  final List<IconData> icons;
  final int activeIndex;
  final Function(int) onTap;

  const CategorySelector({
    super.key,
    required this.categories,
    required this.icons,
    required this.activeIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length, (index) {
          final bool isActive = activeIndex == index;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GestureDetector(
              onTap: () => onTap(index),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: isActive
                        ? const Color(0xff3A2C27)
                        : const Color(0xfff3f3f3),
                    radius: 30,
                    child: CircleAvatar(
                      backgroundColor: const Color(0xffF3F3F3),
                      radius: 29,
                      child: CircleAvatar(
                        backgroundColor: isActive
                            ? const Color(0xff3A2C27)
                            : const Color(0xfff3f3f3),
                        radius: 28,
                        child: Icon(
                          icons[index],
                          color: isActive
                              ? Colors.white
                              : const Color(0xff9d9d9d),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    categories[index],
                    style: TextStyles.fontsize14weight400.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: isActive
                          ? const Color(0xff3A2C27)
                          : const Color(0xff9d9d9d),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
