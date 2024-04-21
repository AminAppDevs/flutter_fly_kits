import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/models/blog_post_model.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class BlogPostDetailsScreen extends StatelessWidget {
  BlogPostDetailsScreen({super.key});
  final post = Get.arguments as BlogPostModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                image: DecorationImage(
                  image: AssetImage(post.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Ionicons.arrow_back_outline,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Ionicons.bookmark_outline,
                            color: Colors.white,
                            size: 23,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Ionicons.send_outline,
                            color: Colors.white,
                            size: 23,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Ionicons.ellipsis_horizontal_circle_outline,
                            color: Colors.white,
                            size: 23,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: BlogColors.titleDark,
                      height: 1.3,
                    ),
                  ),
                  vertical(5),
                  Divider(color: Colors.grey.shade200),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: SvgPicture.asset(
                                post.authorimage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          horizontal(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                post.authorName,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: BlogColors.titleLight,
                                ),
                              ),
                              Text(
                                post.authorurl,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: BlogColors.titleLight.withOpacity(.7),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: BlogColors.primary,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text(
                            "Follow",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(color: Colors.grey.shade200),
                  vertical(5),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: BlogColors.primary),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          post.category,
                          style: TextStyle(
                            fontSize: 12,
                            color: BlogColors.primary,
                          ),
                        ),
                      ),
                      horizontal(10),
                      Text(
                        post.createdAt,
                        style: TextStyle(
                          fontSize: 12,
                          color: BlogColors.titleLight.withOpacity(.7),
                        ),
                      ),
                    ],
                  ),
                  vertical(15),
                  Text(
                    post.content,
                    style: TextStyle(
                      fontSize: 13,
                      color: BlogColors.titleLight,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
