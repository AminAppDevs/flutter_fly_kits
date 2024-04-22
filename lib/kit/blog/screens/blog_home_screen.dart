import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/components/blog_home_recent_articles.dart';
import 'package:flutter_fly_kits/kit/blog/components/blog_home_slider.dart';
import 'package:flutter_fly_kits/kit/blog/components/blog_home_top_writer.dart';
import 'package:flutter_fly_kits/kit/blog/components/blog_home_your_bookmarks.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:ionicons/ionicons.dart';

class BlogHomeScreen extends StatelessWidget {
  const BlogHomeScreen({super.key});

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
              Ionicons.notifications,
              color: BlogColors.titleLight,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlogHomeSlider(),
            vertical(15),
            const BolgHomeTopWriter(),
            vertical(15),
            const BolgHomeRecentArticles(),
            vertical(15),
            const BolgHomeYourBookmarks(),
            vertical(30),
          ],
        ),
      ),
    );
  }
}
