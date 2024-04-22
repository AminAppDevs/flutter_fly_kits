import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/gen/assets.gen.dart';
import 'package:flutter_fly_kits/kit/blog/screens/bolg_top_writer_screen.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class BolgHomeTopWriter extends StatelessWidget {
  const BolgHomeTopWriter({super.key});

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
                "Top Writers",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: BlogColors.titleDark,
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => BlogTopwriterScreen());
                },
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
          height: 100,
          padding: const EdgeInsets.only(left: 20),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              topWriterBox(
                avatar: Assets.images.blog.avatar1,
                name: "Mary",
              ),
              topWriterBox(
                avatar: Assets.images.blog.avatar2,
                name: "Jack",
              ),
              topWriterBox(
                avatar: Assets.images.blog.avatar3,
                name: "David",
              ),
              topWriterBox(
                avatar: Assets.images.blog.avatar4,
                name: "Fatima",
              ),
              topWriterBox(
                avatar: Assets.images.blog.avatar5,
                name: "Alamin",
              ),
            ],
          ),
        ),
      ],
    );
  }

  InkWell topWriterBox({required String avatar, required String name}) {
    return InkWell(
      onTap: () {
        Get.to(() => BlogTopwriterScreen());
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(100),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SvgPicture.asset(
                  avatar,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            vertical(7),
            Text(
              name,
              style: TextStyle(
                fontSize: 12,
                color: BlogColors.titleLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
