import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/models/blog_post_model.dart';
import 'package:flutter_fly_kits/kit/blog/screens/blog_post_details_screen.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class BlogPostVertical extends StatelessWidget {
  const BlogPostVertical({
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(post.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: BlogColors.primary,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        post.isMarked ? Ionicons.bookmark_outline : Ionicons.bookmark_outline,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          vertical(10),
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
          vertical(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
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
                    Expanded(
                      child: Text(
                        post.authorName,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 12,
                          color: BlogColors.titleLight.withOpacity(.7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              horizontal(3),
              Text(
                post.createdAt,
                style: TextStyle(
                  fontSize: 12,
                  color: BlogColors.titleLight.withOpacity(.7),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
