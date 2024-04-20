import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_onboarding.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class GrocerySplashScreen extends StatelessWidget {
  const GrocerySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => GroceryOnboarding());
    });
    return Scaffold(
      backgroundColor: GroceryColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/logo.svg', width: 100),
            vertical(10),
            Container(
              height: 40,
              width: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                "Store One",
                style: TextStyle(
                    fontSize: 13, color: Colors.white.withOpacity(.8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
