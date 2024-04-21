import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/gen/assets.gen.dart';
import 'package:flutter_fly_kits/kit/grocery/controllers/grocery_controller.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
// ignore: depend_on_referenced_packages
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

class GroceryProductDetailsSlider extends StatelessWidget {
  GroceryProductDetailsSlider({super.key});
  final GroceryController groceryController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GroceryController>(
      builder: (controller) {
        return Container(
          height: 300,
          color: Colors.grey.shade200,
          alignment: Alignment.center,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CarouselSlider(
                    items: sliderImages,
                    options: CarouselOptions(
                      height: 200,
                      viewportFraction: 1,
                      initialPage: groceryController.activeProductSliderIndex,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: false,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      enlargeCenterPage: true,
                      enlargeFactor: 0,
                      onPageChanged: (int index, _) {
                        groceryController.changeProductSliderIndex(index);
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: AnimatedSmoothIndicator(
                    activeIndex: groceryController.activeProductSliderIndex, // PageController
                    count: sliderImages.length,
                    effect: ExpandingDotsEffect(
                      dotColor: Colors.white,
                      activeDotColor: GroceryColors.primary,
                      dotHeight: 10,
                      dotWidth: 10,
                    ), // your preferred effect
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

List<Image> sliderImages = [
  Image.asset(
    Assets.images.grocery.redApple.path,
    fit: BoxFit.cover,
  ),
  Image.asset(
    Assets.images.grocery.shata.path,
    fit: BoxFit.cover,
  ),
  Image.asset(
    Assets.images.grocery.ginger.path,
    fit: BoxFit.cover,
  ),
];
