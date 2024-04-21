import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_button.dart';
import 'package:flutter_fly_kits/kit/grocery/components/cart/grocery_checkout_bottom_sheet.dart';
import 'package:flutter_fly_kits/kit/grocery/models/grocery_product_model.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/demo_data/cart.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class GroceryCartScreen extends StatelessWidget {
  const GroceryCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyle(
            color: GroceryColors.titleDark,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: cartItemsData.length,
            itemBuilder: (context, index) {
              GroceryCartIemModel item = cartItemsData[index];
              return Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey.shade200)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(item.coverImage, height: 50),
                        horizontal(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: TextStyle(fontSize: 15, color: GroceryColors.titleDark, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              item.subTitle,
                              style: TextStyle(fontSize: 13, color: GroceryColors.titleLighter),
                            ),
                            vertical(10),
                            Row(
                              children: [
                                InkWell(
                                  borderRadius: BorderRadius.circular(15),
                                  onTap: () {},
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.grey.shade200),
                                    ),
                                    child: Icon(Ionicons.remove, size: 20, color: GroceryColors.titleLighter),
                                  ),
                                ),
                                horizontal(7),
                                Text(
                                  item.qyt.toString(),
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: GroceryColors.titleLighter),
                                ),
                                horizontal(7),
                                InkWell(
                                  borderRadius: BorderRadius.circular(15),
                                  onTap: () {},
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.grey.shade200),
                                    ),
                                    child: Icon(Ionicons.add, size: 20, color: GroceryColors.primary),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Ionicons.close,
                              size: 20,
                              color: GroceryColors.titleLighter,
                            )),
                        Text(
                          "\$${item.price}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: GroceryColors.titleDark,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GroceryButton(
                text: "Go to checkout - \$120",
                onTap: () {
                  Get.bottomSheet(const GroceryCheckoutBottomSheet());
                },
                isLoading: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
