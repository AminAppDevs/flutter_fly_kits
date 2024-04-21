import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/gen/assets.gen.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_splash_screen.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                vertical(40),
                horizontal(double.infinity),
                SvgPicture.asset(Assets.images.flykit, height: 90),
                vertical(5),
                Text(
                  "Flykit",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#27474E"),
                    height: 1.2,
                  ),
                ),
                Text(
                  "Flutter UI Kit",
                  style: TextStyle(
                    fontSize: 16,
                    color: HexColor("#27474E").withOpacity(.6),
                  ),
                ),
                vertical(30),
                HomeListItem(
                  title: "Grocery App",
                  icon: Assets.images.grocery.basket,
                  onTap: () => Get.to(() => const GrocerySplashScreen()),
                  color: "#53B175",
                ),
                HomeListItem(
                  title: "News App - Soon...",
                  icon: Assets.images.news.logo,
                  onTap: () {},
                  color: "#DF3654",
                ),
                HomeListItem(
                  title: "Blog App - Soon...",
                  icon: Assets.images.blog.logo,
                  onTap: () {},
                  color: "#5358FB",
                ),
                HomeListItem(
                  title: "Travel App - Soon...",
                  icon: Assets.images.travel.logo,
                  onTap: () {},
                  color: "#F75D37",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeListItem extends StatelessWidget {
  const HomeListItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
    required this.color,
  });
  final String icon;
  final String title;
  final String color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(bottom: 8),
        width: double.infinity,
        decoration: BoxDecoration(
          color: HexColor(color).withOpacity(.10),
          border: Border.all(color: HexColor(color).withOpacity(.10)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(icon, height: 40),
                horizontal(15),
                Text(
                  title,
                  style: TextStyle(
                    color: HexColor("#27474E"),
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Icon(
              Ionicons.chevron_forward_outline,
              size: 20,
              color: HexColor("#27474E"),
            )
          ],
        ),
      ),
    );
  }
}
