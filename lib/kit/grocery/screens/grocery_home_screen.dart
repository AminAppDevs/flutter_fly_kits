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
        backgroundColor: Colors.white,
        centerTitle: true,
        title: SvgPicture.asset(
          Assets.images.grocery.basket,
          height: 35,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Ionicons.location, color: GroceryColors.titleLight, size: 25),
                  horizontal(4),
                  Text(
                    "Algazira, Sudan",
                    style: TextStyle(
                      fontSize: 14,
                      color: GroceryColors.titleLight,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              vertical(20),
              // Search
              GroceryHomeSearchInput(),
              vertical(10),
              ////////// Slider //////////
              GroceryHomeSlider(),
              vertical(20),
              ////////// Exclusive Offer //////////

              GroceryHomeExclusiveOffers(),
              ////////// Best Selling //////////
              vertical(20),
              GroceryHomeBestSelling(),
              ////////// Groceries //////////
              vertical(20),
              GroceryHomeGroceries(),
            ],
          ),
        ),
      ),
    );
  }
}
