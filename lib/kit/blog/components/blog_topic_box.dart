import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/models/blog_topic_model.dart';

class BlogTopicBox extends StatelessWidget {
  const BlogTopicBox({super.key, required this.topic});
  final BlogTopicModel topic;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
