import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/components/blog_post_vertical.dart';
import 'package:flutter_fly_kits/kit/blog/models/blog_post_model.dart';
import 'package:flutter_fly_kits/kit/blog/screens/bolg_articles_screen.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';
import 'package:flutter_fly_kits/kit/blog/utils/posts.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class BolgHomeRecentArticles extends StatelessWidget {
  const BolgHomeRecentArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Recent Articles",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: BlogColors.titleDark,
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const BlogArticlesScreen());
                },
                child: Icon(
                  Ionicons.arrow_forward_outline,
                  size: 20,
                  color: BlogColors.primary,
                ),
              ),
            ],
          ),
        ),
        vertical(10),
        Container(
          height: 240,
          padding: const EdgeInsets.only(left: 20),
          child: ListView.builder(
              itemCount: recentArticlesData.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                BlogPostModel post = recentArticlesData[index];
                return Container(
                  height: 240,
                  width: 150,
                  margin: const EdgeInsets.only(right: 15),
                  child: BlogPostVertical(
                    post: post,
                  ),
                );
              }),
        ),
      ],
    );
  }
}
