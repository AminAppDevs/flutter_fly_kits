import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/gen/assets.gen.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_button.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GroceryOrderSuccessScreen extends StatelessWidget {
  const GroceryOrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              horizontal(double.infinity),
              vertical(30),
              SvgPicture.asset(Assets.images.grocery.orderSuccess),
              vertical(50),
              Text(
                "Your Order has been accepted",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: GroceryColors.titleDark,
                  height: 1.1,
                ),
              ),
              vertical(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Your items has been placcd and is on it’s way to being processed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: GroceryColors.titleLighter,
                  ),
                ),
              ),
              vertical(80),
              GroceryButton(
                text: "Track Order",
                onTap: () {},
                isLoading: false,
              ),
              vertical(20),
              InkWell(
                onTap: () {},
                child: Text(
                  "Back to home",
                  style: TextStyle(
                    fontSize: 15,
                    color: GroceryColors.titleDark,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
