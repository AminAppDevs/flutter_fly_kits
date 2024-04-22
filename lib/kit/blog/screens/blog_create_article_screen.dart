import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/components/post/blog_create_post_form.dart';
import 'package:flutter_fly_kits/kit/blog/components/post/blog_post_upload_image.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';

class BlogCreateArticleScreen extends StatelessWidget {
  const BlogCreateArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create',
          style: TextStyle(
            fontSize: 15,
            color: BlogColors.titleDark,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    height: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: BlogColors.primary,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      "Save",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                horizontal(7),
                InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    height: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: BlogColors.primary),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Publish",
                      style: TextStyle(
                        fontSize: 13,
                        color: BlogColors.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // post image
              const BlogPostUploadImage(),
              // post form
              BlogCreatePostForm(),
              // post topic and publication time
            ],
          ),
        ),
      ),
    );
  }
}
