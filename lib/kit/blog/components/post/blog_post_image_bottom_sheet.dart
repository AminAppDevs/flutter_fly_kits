import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/controllers/blog_create_post_controller.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class BlogPostImageBottmsheet extends StatelessWidget {
  BlogPostImageBottmsheet({super.key});
  final BlogCreatePostController blogCreatePostController = Get.put(BlogCreatePostController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Slelect cover image",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: BlogColors.titleDark,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Ionicons.close_outline,
                    size: 20,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ],
            ),
            Divider(
              height: 20,
              color: Colors.grey.shade200,
            ),
            InkWell(
              onTap: () {
                blogCreatePostController.uploadImage(fromGallery: true);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Ionicons.image_outline,
                    size: 20,
                    color: BlogColors.titleLight,
                  ),
                  horizontal(5),
                  Text(
                    "From Galery",
                    style: TextStyle(
                      fontSize: 14,
                      color: BlogColors.titleLight,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 20,
              color: Colors.grey.shade200,
            ),
            InkWell(
              onTap: () {
                blogCreatePostController.uploadImage(fromGallery: false);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Ionicons.camera_outline,
                    size: 20,
                    color: BlogColors.titleLight,
                  ),
                  horizontal(5),
                  Text(
                    "From Camera",
                    style: TextStyle(
                      fontSize: 14,
                      color: BlogColors.titleLight,
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
