// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:ionicons/ionicons.dart';

class GroceryCheckoutListItem extends StatelessWidget {
  const GroceryCheckoutListItem({super.key, required this.titile, required this.value});
  final String titile;
  final String value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("tap");
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey.shade200)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titile,
              style: TextStyle(
                fontSize: 13,
                color: GroceryColors.titleLighter,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 14,
                    color: GroceryColors.titleLight,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                horizontal(10),
                Icon(
                  Ionicons.chevron_forward_outline,
                  size: 20,
                  color: GroceryColors.titleLight,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
