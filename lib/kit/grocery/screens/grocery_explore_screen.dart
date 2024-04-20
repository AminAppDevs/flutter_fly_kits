import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/components/home/grocery_home_search_input.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/demo_data/categories.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:hexcolor/hexcolor.dart';

class GroceryExploreScreen extends StatelessWidget {
  const GroceryExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Find Products",
          style: TextStyle(
            color: GroceryColors.titleDark,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          vertical(20),
          const GroceryHomeSearchInput(),
          vertical(20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: groceryCategoriesData
                    .map(
                      (category) => Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: HexColor(category.color).withOpacity(.15),
                          border: Border.all(color: HexColor(category.color).withOpacity(.20)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(category.image, height: 50),
                            vertical(15),
                            Text(
                              category.name,
                              style: TextStyle(
                                color: GroceryColors.titleDark,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
