import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/store1/components/so_button.dart';
import 'package:flutter_fly_kits/kit/store1/screens/so_login_screem.dart';
import 'package:flutter_fly_kits/kit/store1/utils/so_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:get/get.dart';

class SOOnboarding extends StatelessWidget {
  const SOOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SOColors.titleLight,
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/store_one/onboarding_bg.png"), fit: BoxFit.cover),
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
              "Fly kit Store",
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
            SOButton(
                text: "Get Started",
                onTap: () {
                  Get.to(() => SOLoginScreen());
                },
                isLoading: false),
            vertical(40),
          ],
        ),
      ),
    );
  }
}
