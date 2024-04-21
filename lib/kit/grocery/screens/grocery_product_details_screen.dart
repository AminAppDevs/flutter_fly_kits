import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_button.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_product_details_slider.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:ionicons/ionicons.dart';

class GroceryProductDetailsScreen extends StatelessWidget {
  const GroceryProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GroceryProductDetailsSlider(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bell Pepper Red",
                            style: TextStyle(
                              fontSize: 20,
                              color: GroceryColors.titleDark,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "1kg, Price",
                            style: TextStyle(
                              fontSize: 13,
                              color: GroceryColors.titleLighter,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Ionicons.heart, color: Colors.grey.shade400, size: 30),
                        onPressed: () {},
                      )
                    ],
                  ),
                  vertical(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                            "1",
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
                      Text(
                        "\$5.99",
                        style: TextStyle(
                          fontSize: 18,
                          color: GroceryColors.titleDark,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  vertical(10),
                  Divider(color: Colors.grey.shade200),
                  vertical(7),
                  Text(
                    "Product Description",
                    style: TextStyle(
                      fontSize: 15,
                      color: GroceryColors.titleLight,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  vertical(6),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium orci et mi semper, vitae dapibus erat ultrices. Aenean et justo sit amet lacus lacinia interdum. In hac habitasse platea dictumst. Integer vel justo sed leo sodales cursus at vitae eros. Sed pretium orci et mi semper, vitae dapibus Sed pretium orci et mi semper, vitae dapibus",
                    style: TextStyle(
                      fontSize: 13,
                      color: GroceryColors.titleLighter,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: GroceryButton(text: "Add to Basket", onTap: () {}, isLoading: false),
      ),
    );
  }
}
