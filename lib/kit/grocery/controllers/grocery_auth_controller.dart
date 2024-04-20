import 'dart:async';

import 'package:get/get.dart';

class GroceryAuthController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    startOtpTimer();
  }

  // resend otp counter
  int otpCounter = 120;
  Timer? timer;

  void startOtpTimer() {
    const duration = Duration(seconds: 1);
    timer = Timer.periodic(duration, (Timer t) {
      if (otpCounter > 0) {
        otpCounter--;
        update(); // Call your update function to reflect the change
      } else {
        t.cancel(); // Stop the timer when counter reaches 0
      }
    });
  }

  void stopOtpTimer() {
    otpCounter = 120;
    update();
  }
}
