import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_button.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_text_form_field.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/gorcery_otp_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_login_screem.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class GrocerySignupScreen extends StatelessWidget {
  GrocerySignupScreen({super.key});

  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passworController = TextEditingController();
  final TextEditingController confirmPassworController = TextEditingController();

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
                  SvgPicture.asset("assets/images/store_one/basket.svg", height: 60),
                  vertical(15),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: GroceryColors.titleDark,
                    ),
                  ),
                  Text(
                    "Enter your credentials to continue",
                    style: TextStyle(
                      fontSize: 14,
                      color: GroceryColors.titleLight,
                    ),
                  ),
                  vertical(20),
                  GroceryTextFormField(
                    controller: nameController,
                    label: "Full name",
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter your name";
                      }
                      return null;
                    },
                  ),
                  vertical(10),
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
                      } else if (value.length < 8) {
                        return "Password must be greater than 8 char";
                      }
                      return null;
                    },
                  ),
                  vertical(10),
                  GroceryTextFormField(
                    controller: confirmPassworController,
                    keyboardType: TextInputType.visiblePassword,
                    label: "Confirm password",
                    obscureText: true,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter confirm password";
                      } else if (value.length < 8) {
                        return "Password must be greater than 8 char";
                      } else if (value != passworController.text) {
                        return "Password not match";
                      }
                      return null;
                    },
                  ),
                  vertical(10),
                  GroceryButton(
                    text: "Sign Up",
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Get.to(() => GroceryOtpScreen());
                      }
                    },
                    isLoading: false,
                  ),
                  vertical(20),
                  InkWell(
                    onTap: () {
                      Get.to(() => GroceryLoginScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontSize: 12,
                            color: GroceryColors.titleDark,
                          ),
                        ),
                        horizontal(5),
                        Text(
                          "Login",
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
