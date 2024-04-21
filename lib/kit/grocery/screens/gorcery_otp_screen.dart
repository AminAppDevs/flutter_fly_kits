import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/gen/assets.gen.dart';
import 'package:flutter_fly_kits/kit/grocery/components/grocery_button.dart';
import 'package:flutter_fly_kits/kit/grocery/controllers/grocery_auth_controller.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_main_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class GroceryOtpScreen extends StatelessWidget {
  GroceryOtpScreen({super.key});
  final GroceryAuthController groceryAuthController = Get.put(GroceryAuthController());
  final formKey = GlobalKey<FormState>();
  final TextEditingController otpController = TextEditingController();

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
                    "Confirm Code",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: GroceryColors.titleDark,
                    ),
                  ),
                  Text(
                    "Please enter the confirmation code sent to your email to proceed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: GroceryColors.titleLight,
                    ),
                  ),
                  vertical(20),
                  PinCodeTextField(
                    appContext: context,
                    controller: otpController,
                    validator: (String? value) {
                      if (value!.length != 4) {
                        return "Please enter otp code, 4 digit";
                      }
                      return null;
                    },
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    autoFocus: true,
                    autovalidateMode: AutovalidateMode.disabled,
                    enableActiveFill: true,
                    cursorColor: GroceryColors.primary,
                    errorTextSpace: 25,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(20),
                      activeBorderWidth: 1,
                      activeColor: GroceryColors.primary,
                      errorBorderColor: Colors.red,
                      errorBorderWidth: 1,
                      borderWidth: 1,
                      selectedFillColor: Colors.grey.shade100,
                      fieldHeight: MediaQuery.of(context).size.width * .20,
                      fieldWidth: MediaQuery.of(context).size.width * .20,
                      activeFillColor: Colors.grey.shade200,
                      inactiveFillColor: Colors.grey.shade100,
                      selectedColor: GroceryColors.primary,
                      selectedBorderWidth: 1,
                      inactiveBorderWidth: 1,
                      inactiveColor: Colors.grey.shade300,
                    ),
                  ),
                  vertical(10),
                  GroceryButton(
                    text: "Confirm",
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Get.to(() => GroceryMainScreen());
                      }
                    },
                    isLoading: false,
                  ),
                  vertical(25),
                  GetBuilder<GroceryAuthController>(
                    builder: (_) {
                      return groceryAuthController.otpCounter > 0
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "You can resend code after",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: GroceryColors.titleLight,
                                  ),
                                ),
                                horizontal(6),
                                Text(
                                  "${groceryAuthController.otpCounter}s",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: GroceryColors.primary,
                                  ),
                                ),
                              ],
                            )
                          : InkWell(
                              onTap: () {
                                groceryAuthController.stopOtpTimer();
                              },
                              child: Text(
                                "Resend OTP code",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: GroceryColors.primary,
                                ),
                              ),
                            );
                    },
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
