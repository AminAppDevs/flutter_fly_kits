import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_button.dart';
import 'package:flutter_fly_kits/kit/grocery/models/grocery_product_model.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/demo_data/cart.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:ionicons/ionicons.dart';

class GroceryFavoritesScreen extends StatelessWidget {
  const GroceryFavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Favorites",
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
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "\$${item.price}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: GroceryColors.titleDark,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Ionicons.chevron_forward_outline,
                              size: 20,
                              color: GroceryColors.titleLighter,
                            )),
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
              child: GroceryButton(text: "Add all to cart", onTap: () {}, isLoading: false),
            ),
          ),
        ],
      ),
    );
  }
}
