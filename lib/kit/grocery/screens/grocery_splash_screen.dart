import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/gen/assets.gen.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_onboarding.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class GrocerySplashScreen extends StatefulWidget {
  const GrocerySplashScreen({super.key});

  @override
  State<GrocerySplashScreen> createState() => _GrocerySplashScreenState();
}

class _GrocerySplashScreenState extends State<GrocerySplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.to(() => const GroceryOnboarding());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GroceryColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.images.flykitLight, height: 90),
            vertical(20),
            Container(
              height: 40,
              width: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                "Grocery",
                style: TextStyle(fontSize: 13, color: Colors.white.withOpacity(.8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
