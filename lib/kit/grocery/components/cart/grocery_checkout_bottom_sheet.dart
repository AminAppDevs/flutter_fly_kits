import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/components/cart/grocery_checkout_list_item.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_button.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_order_success_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class GroceryCheckoutBottomSheet extends StatelessWidget {
  const GroceryCheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
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
                  icon: Icon(Ionicons.close, size: 30, color: GroceryColors.titleLighter),
                ),
              ],
            ),
            vertical(20),
            const GroceryCheckoutListItem(
              titile: "Delivery",
              value: "Select Method",
            ),
            const GroceryCheckoutListItem(
              titile: "Payment Method",
              value: "Cash",
            ),
            const GroceryCheckoutListItem(
              titile: "Coupon",
              value: "Add Coupon",
            ),
            const GroceryCheckoutListItem(
              titile: "Total Cost",
              value: "\$120",
            ),
            vertical(20),
            GroceryButton(
                text: "Place Order",
                onTap: () {
                  Get.to(() => const GroceryOrderSuccessScreen());
                },
                isLoading: false),
          ],
        ),
      ),
    );
  }
}
