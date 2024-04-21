import 'package:get/get.dart';

class BlogController extends GetxController {
  int activePage = 0;
  void updateActivePage(int index) {
    activePage = index;
    update();
  }
}
