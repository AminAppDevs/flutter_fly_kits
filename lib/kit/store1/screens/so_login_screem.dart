import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/store1/utils/so_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SOLoginScreen extends StatelessWidget {
  const SOLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: [
                horizontal(double.infinity),
                vertical(20),
                SvgPicture.asset("assets/images/logo_dark.svg", width: 80),
                vertical(15),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: SOColors.titleDark,
                  ),
                ),
                Text(
                  "Enter your emails and password",
                  style: TextStyle(
                    fontSize: 14,
                    color: SOColors.titleLight,
                  ),
                ),
                vertical(20),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "email",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
