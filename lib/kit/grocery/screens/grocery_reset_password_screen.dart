import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/gen/assets.gen.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_button.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_text_form_field.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/gorcery_otp_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class GroceryResetPasswordScreen extends StatelessWidget {
  GroceryResetPasswordScreen({super.key});
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  horizontal(double.infinity),
                  vertical(20),
                  SvgPicture.asset(Assets.images.grocery.basket, height: 50),
                  vertical(15),
                  Text(
                    "Reset password",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: GroceryColors.titleDark,
                    ),
                  ),
                  Text(
                    "Enter your emails",
                    style: TextStyle(
                      fontSize: 14,
                      color: GroceryColors.titleLight,
                    ),
                  ),
                  vertical(20),
                  GroceryTextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    label: "Email",
                    validator: (String? value) {
                      if (!GetUtils.isEmail(value!)) {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                  ),
                  vertical(10),
                  GroceryButton(
                    text: "Reset",
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Get.to(() => GroceryOtpScreen());
                      }
                    },
                    isLoading: false,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
