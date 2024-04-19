import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/store1/screens/so_login_screem.dart';
import 'package:flutter_fly_kits/kit/store1/screens/so_splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Fly Kit",
      theme: ThemeData(fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
      home: SOLoginScreen(),
    );
  }
}
