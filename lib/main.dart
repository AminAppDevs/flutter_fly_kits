import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_main_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_home_screen.dart';
import 'package:flutter_fly_kits/kit/grocery/screens/grocery_login_screem.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Fly Kit",
      theme: ThemeData(fontFamily: "Roboto"),
      debugShowCheckedModeBanner: false,
      home: GroceryMainScreen(),
    );
  }
}
