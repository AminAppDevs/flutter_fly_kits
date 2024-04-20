import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/controllers/grocery_controller.dart';
import 'package:flutter_fly_kits/kit/grocery/models/grocery_product_model.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/demo_data/products.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class GroceryHomeExclusiveOffers extends StatelessWidget {
  GroceryHomeExclusiveOffers({super.key});
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
                "Exclusive Offers",
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
            height: 251,
            child: ListView.builder(
              itemCount: exclusiveOffersProductsData.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                GroceryProductModel product =
                    exclusiveOffersProductsData[index];
                return Container(
                  width: 180,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 100,
                        alignment: Alignment.center,
                        child: Image.asset(product.coverImage),
                      ),
                      vertical(15),
                      Text(
                        product.name,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: GroceryColors.titleDark,
                          height: 1,
                        ),
                      ),
                      vertical(10),
                      Text(
                        product.subTitle,
                        style: TextStyle(
                          fontSize: 12,
                          color: GroceryColors.titleLighter,
                          height: 1,
                        ),
                      ),
                      vertical(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '\$${product.price}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: GroceryColors.titleDark,
                              height: 1,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 40,
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: GroceryColors.primary,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Ionicons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
