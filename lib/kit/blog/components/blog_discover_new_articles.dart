import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/components/blog_post_horizontal.dart';
import 'package:flutter_fly_kits/kit/blog/models/blog_post_model.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';
import 'package:flutter_fly_kits/kit/blog/utils/posts.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:ionicons/ionicons.dart';

class BolgDiscoverNewArticles extends StatelessWidget {
  const BolgDiscoverNewArticles({super.key});

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
                "New Articles",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: BlogColors.titleDark,
                ),
              ),
              InkWell(
                onTap: () {},
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
              itemCount: recentArticlesData.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                BlogPostModel post = recentArticlesData[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: BlogPostHorizontal(
                    post: post,
                  ),
                );
              }),
        ),
      ],
    );
  }
}
