import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fly_kits/kit/blog/models/blog_post_model.dart';
import 'package:flutter_fly_kits/kit/blog/screens/blog_post_details_screen.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class BlogPostHorizontal extends StatelessWidget {
  const BlogPostHorizontal({
    super.key,
    required this.post,
  });
  final BlogPostModel post;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Get.to(
          () => BlogPostDetailsScreen(),
          arguments: post,
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(post.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          horizontal(15),
          Expanded(
            child: Column(
              children: [
                Text(
                  post.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                    color: BlogColors.titleDark.withOpacity(.8),
                    fontWeight: FontWeight.w500,
                    height: 1.3,
                  ),
                ),
                vertical(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SvgPicture.asset(
                            post.authorimage,
                            width: 20,
                            height: 20,
                          ),
                        ),
                        horizontal(5),
                        Text(
                          post.authorName,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 12,
                            color: BlogColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      post.createdAt,
                      style: TextStyle(
                        fontSize: 12,
                        color: BlogColors.titleLight.withOpacity(.7),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Ionicons.bookmark_outline,
                          color: BlogColors.titleLight,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
