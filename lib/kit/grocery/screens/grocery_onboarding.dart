import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/gen/assets.gen.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_button.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_login_screem.dart';

import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:get/get.dart';

class GroceryOnboarding extends StatelessWidget {
  const GroceryOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GroceryColors.titleLight,
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.images.grocery.onboardingBg.path), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            horizontal(double.infinity),
            const Text(
              "Welcome to",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w300,
                height: 1,
              ),
            ),
            vertical(10),
            const Text(
              "Fly kit Grocery",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                height: 1,
              ),
            ),
            vertical(15),
            Text(
              "Get all you need in one place, with low prices",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white.withOpacity(.7),
              ),
            ),
            vertical(40),
            GroceryButton(
                text: "Get Started",
                onTap: () {
                  Get.to(() => GroceryLoginScreen());
                },
                isLoading: false),
            vertical(40),
          ],
        ),
      ),
    );
  }
}
