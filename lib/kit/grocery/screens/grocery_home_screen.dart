import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/gen/assets.gen.dart';
import 'package:flutter_fly_kits/kit/grocery/components/home/grocery_home_best_selling.dart';
import 'package:flutter_fly_kits/kit/grocery/components/home/grocery_home_exclusive_offers.dart';
import 'package:flutter_fly_kits/kit/grocery/components/home/grocery_home_groceries.dart';
import 'package:flutter_fly_kits/kit/grocery/components/home/grocery_home_search_input.dart';
import 'package:flutter_fly_kits/kit/grocery/components/home/grocery_home_slider.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';

class GroceryHomeScreen extends StatelessWidget {
  const GroceryHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: GroceryColors.primary,
        leading: Container(),
        leadingWidth: 1,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.images.grocery.basket,
              height: 25,
            ),
            horizontal(10),
            const Text(
              "FLY KIT",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Algazira, Sudan",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                horizontal(4),
                const Icon(Ionicons.location, color: Colors.white, size: 20),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              vertical(10),
              const GroceryHomeSearchInput(),
              vertical(10),
              GroceryHomeSlider(),
              vertical(20),
              GroceryHomeGroceries(),
              vertical(20),
              GroceryHomeExclusiveOffers(),
              vertical(20),
              GroceryHomeBestSelling(),
              vertical(20),
            ],
          ),
        ),
      ),
    );
  }
}
