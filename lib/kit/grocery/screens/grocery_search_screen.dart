import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/models/grocery_product_model.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/demo_data/cart.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:ionicons/ionicons.dart';

class GrocerySearchScreen extends StatelessWidget {
  const GrocerySearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          autofocus: true,
          onChanged: (String value) {},
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade200,
            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            prefixIcon: Icon(Ionicons.search, size: 22, color: GroceryColors.titleLight),
            hintText: "Search here...",
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: GroceryColors.titleLighter,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: GroceryColors.primary),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Search results",
                style: TextStyle(
                  fontSize: 14,
                  color: GroceryColors.titleDark,
                ),
              ),
              vertical(15),
              ListView.builder(
                shrinkWrap: true,
                itemCount: cartItemsData.length,
                itemBuilder: (context, index) {
                  GroceryCartIemModel item = cartItemsData[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
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
            ],
          ),
        ),
      ),
    );
  }
}
