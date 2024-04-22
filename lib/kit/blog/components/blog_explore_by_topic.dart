import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/components/blog_topic_box.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';
import 'package:flutter_fly_kits/kit/blog/utils/topics.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:ionicons/ionicons.dart';

class BolgExploreByTopic extends StatelessWidget {
  const BolgExploreByTopic({super.key});

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
                "Explore By Topic",
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
        Container(
          height: 110,
          padding: const EdgeInsets.only(left: 20),
          child: ListView.builder(
              itemCount: topicsData.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var topic = topicsData[index];
                return Container(
                  width: 170,
                  margin: const EdgeInsets.only(right: 15),
                  child: BlogTopicBox(topic: topic),
                );
              }),
        ),
      ],
    );
  }
}
