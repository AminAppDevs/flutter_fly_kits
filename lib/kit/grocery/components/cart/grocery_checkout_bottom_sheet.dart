import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class GroceryCheckoutBottomSheet extends StatelessWidget {
  const GroceryCheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Checkout",
                  style: TextStyle(
                    fontSize: 18,
                    color: GroceryColors.titleDark,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Ionicons.close,
                        size: 30, color: GroceryColors.titleLighter))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
