import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/screens/blog_main_screen.dart';

import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Fly Kit",
      theme: ThemeData(fontFamily: "Roboto"),
      debugShowCheckedModeBanner: false,
      home: BlogMainScreen(),
    );
  }
}
