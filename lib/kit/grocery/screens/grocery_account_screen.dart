import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/gen/assets.gen.dart';
import 'package:flutter_fly_kits/kit/grocery/components/account/grocery_account_list_item.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:ionicons/ionicons.dart';

class GroceryAccountScreen extends StatelessWidget {
  const GroceryAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // avatar
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(Assets.images.grocery.avatar.path),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    horizontal(15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Alamin Musa",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: GroceryColors.titleLight,
                            height: 1,
                          ),
                        ),
                        Text(
                          "amin.app.devs@gmail.com",
                          style: TextStyle(
                            fontSize: 12,
                            color: GroceryColors.titleLighter,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              vertical(10),
              // account list items
              const GroceryAccountListItem(
                icon: Ionicons.bag_outline,
                title: "Orders",
              ),
              const GroceryAccountListItem(
                icon: Ionicons.person_outline,
                title: "My Details",
              ),
              const GroceryAccountListItem(
                icon: Ionicons.location_outline,
                title: "Delivery Address",
              ),
              const GroceryAccountListItem(
                icon: Ionicons.cash_outline,
                title: "Payment Methods",
              ),
              const GroceryAccountListItem(
                icon: Ionicons.notifications_outline,
                title: "Notifications",
              ),
              const GroceryAccountListItem(
                icon: Ionicons.help_buoy_outline,
                title: "Help",
              ),
              const GroceryAccountListItem(
                icon: Ionicons.help_outline,
                title: "About",
              ),
              const GroceryAccountListItem(
                icon: Ionicons.log_out_outline,
                title: "Logout",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
