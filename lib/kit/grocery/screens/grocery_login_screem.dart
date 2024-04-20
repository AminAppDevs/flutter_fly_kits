import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_button.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_text_form_field.dart';
import 'package:flutter_fly_kits/kit/grocery/controllers/grocery_auth_controller.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_home_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_reset_password_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_signup_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class GroceryLoginScreen extends StatelessWidget {
  GroceryLoginScreen({super.key});

  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passworController = TextEditingController();

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
                  SvgPicture.asset("assets/images/store_one/basket.svg",
                      height: 60),
                  vertical(15),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: GroceryColors.titleDark,
                    ),
                  ),
                  Text(
                    "Enter your emails and password",
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
                  GroceryTextFormField(
                    controller: passworController,
                    keyboardType: TextInputType.visiblePassword,
                    label: "Password",
                    obscureText: true,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter your password";
                      }
                      return null;
                    },
                  ),
                  vertical(6),
                  InkWell(
                    onTap: () {
                      Get.to(() => GroceryResetPasswordScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forget Password?",
                          style: TextStyle(
                            fontSize: 12,
                            color: GroceryColors.titleLight,
                          ),
                        ),
                        horizontal(5),
                        Text(
                          "Reset",
                          style: TextStyle(
                            fontSize: 13,
                            color: GroceryColors.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  vertical(10),
                  GroceryButton(
                    text: "Login",
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Get.to(() => GroceryHomeScreen());
                      }
                    },
                    isLoading: false,
                  ),
                  vertical(20),
                  InkWell(
                    onTap: () {
                      Get.to(() => GrocerySignupScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontSize: 12,
                            color: GroceryColors.titleDark,
                          ),
                        ),
                        horizontal(5),
                        Text(
                          "Signup",
                          style: TextStyle(
                            fontSize: 13,
                            color: GroceryColors.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
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
