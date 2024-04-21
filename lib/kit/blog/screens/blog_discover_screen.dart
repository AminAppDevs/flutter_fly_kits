import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/components/blog_discover_most_popular.dart';
import 'package:flutter_fly_kits/kit/blog/components/blog_explore_by_topic.dart';
import 'package:flutter_fly_kits/kit/blog/components/blog_form_filed.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:ionicons/ionicons.dart';

class BlogDiscoverScreen extends StatelessWidget {
  BlogDiscoverScreen({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            horizontal(5),
            Text(
              "Flykit",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: BlogColors.titleDark,
              ),
            ),
            horizontal(3),
            Text(
              "Blog",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: BlogColors.primary,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Ionicons.ellipsis_horizontal_circle_outline,
              color: BlogColors.titleDark,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            vertical(10),
            BlogFormField(
              controller: searchController,
              hintText: "Search for article or writer",
              icon: Ionicons.search_outline,
            ),
            vertical(20),
            const BolgDiscoverMostPopular(),
            vertical(20),
            const BolgExploreByTopic(),
          ],
        ),
      ),
    );
  }
}
