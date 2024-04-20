import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_search_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class GroceryHomeSearchInput extends StatelessWidget {
  const GroceryHomeSearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {
          Get.to(() => const GrocerySearchScreen());
        },
        child: Container(
          height: 60,
          width: double.infinity,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Ionicons.search, color: GroceryColors.titleLight, size: 25),
              horizontal(4),
              Text(
                "Search Store",
                style: TextStyle(
                  fontSize: 14,
                  color: GroceryColors.titleLighter,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
