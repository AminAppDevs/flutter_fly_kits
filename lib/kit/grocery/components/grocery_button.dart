import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_loading.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';

class GroceryButton extends StatelessWidget {
  const GroceryButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.isLoading});
  final String text;
  final void Function() onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      splashColor: GroceryColors.primary,
      child: Container(
        width: double.infinity,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: GroceryColors.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: isLoading
            ? const GroceryLoading()
            : Text(text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
      ),
    );
  }
}
