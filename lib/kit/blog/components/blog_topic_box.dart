import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/models/blog_topic_model.dart';
import 'package:flutter_fly_kits/kit/blog/screens/blog_topic_posts_screen.dart';
import 'package:get/get.dart';

class BlogTopicBox extends StatelessWidget {
  const BlogTopicBox({super.key, required this.topic});
  final BlogTopicModel topic;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Get.to(() => const BlogTopicPostsScreen());
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage(topic.image), fit: BoxFit.cover),
            ),
          ),
          Container(
            width: double.infinity,
            height: 130,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  topic.title,
                  maxLines: 1,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${topic.postsNumbers} articles",
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
