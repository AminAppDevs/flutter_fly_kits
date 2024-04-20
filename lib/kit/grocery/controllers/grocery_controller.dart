import 'package:get/get.dart';

class GroceryController extends GetxController {
  int activePage = 0;
  int activeSliderIndex = 0;

  // change active page
  void changeActivePage(int index) {
    activePage = index;
    update();
  }

  // change slider index
  void changeSliderIndex(int index) {
    activeSliderIndex = index;
    update();
  }
}
