import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/screens/blog_post_details_screen.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';
import 'package:flutter_fly_kits/kit/blog/utils/posts.dart';
import 'package:flutter_fly_kits/kit/grocery/controllers/grocery_controller.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
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
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade100),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CarouselSlider.builder(
                itemCount: sliderData.length,
                itemBuilder: (context, index, realIndex) {
                  return InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      Get.to(() => BlogPostDetailsScreen(), arguments: sliderData[index]);
                    },
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(sliderData[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: double.infinity,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(.5),
                                  Colors.black.withOpacity(0.0),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 160,
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
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          Get.to(() => BlogPostDetailsScreen(), arguments: sliderData[groceryController.activeSliderIndex]);
                        },
                        child: Text(
                          sliderData[groceryController.activeSliderIndex].title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    horizontal(25),
                    AnimatedSmoothIndicator(
                      activeIndex: groceryController.activeSliderIndex, // PageController
                      count: sliderData.length,
                      effect: ExpandingDotsEffect(
                        dotColor: Colors.white,
                        activeDotColor: BlogColors.primary,
                        dotHeight: 7,
                        dotWidth: 7,
                      ), // your preferred effect
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
