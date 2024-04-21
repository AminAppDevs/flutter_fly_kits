import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/gen/assets.gen.dart';
import 'package:flutter_fly_kits/kit/grocery/controllers/grocery_controller.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BlogHomeSlider extends StatelessWidget {
  BlogHomeSlider({super.key});
  final GroceryController groceryController = Get.put(GroceryController());
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GroceryController>(builder: (_) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade100),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CarouselSlider(
                items: sliderImages,
                options: CarouselOptions(
                  height: 140,
                  viewportFraction: 1,
                  initialPage: groceryController.activeSliderIndex,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enlargeCenterPage: true,
                  enlargeFactor: 0,
                  onPageChanged: (int index, _) {
                    groceryController.changeSliderIndex(index);
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedSmoothIndicator(
                  activeIndex: groceryController.activeSliderIndex, // PageController
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
    });
  }
}

List<Image> sliderImages = [
  Image.asset(
    Assets.images.grocery.grocerySlide1.path,
    fit: BoxFit.cover,
  ),
  Image.asset(
    Assets.images.grocery.grocerySlide2.path,
    fit: BoxFit.cover,
  ),
  Image.asset(
    Assets.images.grocery.grocerySlide3.path,
    fit: BoxFit.cover,
  ),
];
