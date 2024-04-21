import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/controllers/grocery_controller.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_account_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_cart_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_explore_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_favorites_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_home_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class GroceryMainScreen extends StatelessWidget {
  GroceryMainScreen({super.key});
  final GroceryController groceryController = Get.put(GroceryController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GroceryController>(builder: (_) {
      return Scaffold(
        body: IndexedStack(
          index: groceryController.activePage,
          children: const [
            GroceryHomeScreen(),
            GroceryExploreScreen(),
            GroceryCartScreen(),
            GroceryFavoritesScreen(),
            GroceryAccountScreen(),
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 3),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.grey.shade200)),
          ),
          child: BottomNavigationBar(
            onTap: (int index) {
              groceryController.changeActivePage(index);
            },
            backgroundColor: Colors.white,
            currentIndex: groceryController.activePage,
            elevation: 0,
            iconSize: 22,
            selectedFontSize: 14,
            unselectedFontSize: 14,
            selectedItemColor: GroceryColors.primary,
            unselectedItemColor: GroceryColors.titleLighter,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Ionicons.storefront_outline),
                label: "Store",
              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.apps_outline),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.bag_outline),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.heart_outline),
                label: "Favourite",
              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.person_outline),
                label: "Account",
              ),
            ],
          ),
        ),
      );
    });
  }
}
