import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_product_box.dart';
import 'package:flutter_fly_kits/kit/grocery/controllers/grocery_controller.dart';
import 'package:flutter_fly_kits/kit/grocery/models/grocery_category_model.dart';
import 'package:flutter_fly_kits/kit/grocery/models/grocery_product_model.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/demo_data/categories.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/demo_data/products.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class GroceryHomeGroceries extends StatelessWidget {
  GroceryHomeGroceries({super.key});
  final GroceryController groceryController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Groceries",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: GroceryColors.titleDark,
                ),
              ),
              InkWell(
                onTap: () {
                  groceryController.changeActivePage(1);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: GroceryColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // products

          vertical(15),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: groceryCategoriesData.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                GroceryCategoryModel category = groceryCategoriesData[index];
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 40),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: HexColor(category.color).withOpacity(.25),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(category.image, height: 65),
                      horizontal(10),
                      Text(
                        category.name,
                        style: TextStyle(
                          color: GroceryColors.titleDark,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          vertical(15),
          SizedBox(
            height: 248,
            child: ListView.builder(
              itemCount: exclusiveOffersProductsData.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                GroceryProductModel product = exclusiveOffersProductsData[index];
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 180,
                  child: GroceryProductBox(product: product, maxLines: 1),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
