import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/components/post/blog_post_image_bottom_sheet.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class BlogPostUploadImage extends StatelessWidget {
  const BlogPostUploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Get.bottomSheet(BlogPostImageBottmsheet());
      },
      child: Container(
        alignment: Alignment.center,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Ionicons.image,
              color: Colors.grey.shade500,
              size: 40,
            ),
            vertical(15),
            Text(
              "Add post cover image",
              style: TextStyle(
                fontSize: 13,
                color: BlogColors.titleLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
