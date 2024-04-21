import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/controllers/blog_controller.dart';
import 'package:flutter_fly_kits/kit/blog/screens/blog_discover_screen.dart';
import 'package:flutter_fly_kits/kit/blog/screens/blog_home_screen.dart';
import 'package:flutter_fly_kits/kit/blog/screens/blog_my_articles_screen.dart';
import 'package:flutter_fly_kits/kit/blog/screens/blog_profile_screen.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class BlogMainScreen extends StatelessWidget {
  BlogMainScreen({super.key});
  final BlogController blogController = Get.put(BlogController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogController>(
      builder: (_) {
        return Scaffold(
          body: IndexedStack(
            index: blogController.activePage,
            children: [
              const BlogHomeScreen(),
              BlogDiscoverScreen(),
              const BlogMyArticlesScreen(),
              const BlogProfileScreen(),
            ],
          ),
          bottomNavigationBar: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  top: BorderSide(
                color: Colors.grey.shade200,
              )),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                bootmSheetItem(
                  index: 0,
                  icon: Ionicons.home_outline,
                  title: "Home",
                ),
                bootmSheetItem(
                  index: 1,
                  icon: Ionicons.compass_outline,
                  title: "Discover",
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {},
                  child: Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: BlogColors.primary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Ionicons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                bootmSheetItem(
                  index: 2,
                  icon: Ionicons.document_text_outline,
                  title: "My Articles",
                ),
                bootmSheetItem(
                  index: 3,
                  icon: Ionicons.person_outline,
                  title: "Profile",
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  InkWell bootmSheetItem({
    required int index,
    required IconData icon,
    required String title,
  }) {
    return InkWell(
      onTap: () {
        blogController.updateActivePage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: blogController.activePage == index ? BlogColors.primary : BlogColors.titleLight,
            size: 22,
          ),
          vertical(3),
          Text(
            title,
            style: TextStyle(fontSize: 12, color: blogController.activePage == index ? BlogColors.primary : BlogColors.titleLight),
          ),
        ],
      ),
    );
  }
}
