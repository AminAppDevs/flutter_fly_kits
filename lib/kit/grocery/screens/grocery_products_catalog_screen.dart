import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_product_box.dart';
import 'package:flutter_fly_kits/kit/grocery/components/home/grocery_home_search_input.dart';
import 'package:flutter_fly_kits/kit/grocery/models/grocery_product_model.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/demo_data/products.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GroceryProductsCatalogScreen extends StatelessWidget {
  const GroceryProductsCatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Meat & fish",
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
              child: AlignedGridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                itemCount: exclusiveOffersProductsData.length,
                itemBuilder: (context, index) {
                  GroceryProductModel product = exclusiveOffersProductsData[index];
                  return GroceryProductBox(product: product);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
