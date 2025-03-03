import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/image_handle_from_network_network.dart';
import 'package:fashion_shoping/features/home/controllers/home_screen_controller.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:fashion_shoping/features/home/presentation/widgets/home_screen_new_sale_part_widget.dart';
import 'package:fashion_shoping/features/home/presentation/widgets/home_screen_popular_sale_part_widget.dart';
import 'package:fashion_shoping/features/home/presentation/widgets/home_screen_sale_part_widget.dart';
import 'package:fashion_shoping/features/home/presentation/widgets/home_screen_summer_sale_part_widget.dart';
import 'package:fashion_shoping/features/home/presentation/widgets/home_screen_you_may_like_sale_part_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeScreenController controller = Get.find<HomeScreenController>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        width: Get.width,
        height: Get.height,
        color: scaffoldBackgroundColor,
        child: Obx(()=> controller.homeScreenDataOnProcessing.value
            ? SizedBox(
          width: Get.width,
          height: Get.height,
          child: Center(
            child: defaultLoaderOfCircularProgressIndicatorForStateFullWidget(),
          ),
        ) : ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          padding: EdgeInsets.all(0.0),
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1.0, // To ensure full width
                onPageChanged: (index, reason) => controller.sliderOnChangedMethod(index),
              ),
              items: controller.sliderList.map((item) {
                return SizedBox(
                  width: Get.width,
                  height: 300,
                  child: Stack(
                    children: [
                      ImageHandleFromNetworkWidget(
                        imageUrl: item.imageUrl ?? "",
                        fit: BoxFit.fill,
                        width: Get.width,
                        height: 300,
                        radius: 0,
                      ),
                      Positioned(
                        left: 10,
                        bottom: 10,
                        child: Text(
                          item.title ?? "",
                          style: AppTextTheme.text20.copyWith(
                            color: whiteColor,
                            fontWeight: FontWeight.bold
                          ),
                      ),
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: AnimatedSmoothIndicator(
                activeIndex: controller.sliderCurrentIndex.value,
                count: controller.sliderList.length,
                effect: const WormEffect(
                  activeDotColor: primaryColor,
                  dotColor: secondaryColor,
                  dotHeight: 12,
                  dotWidth: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10, bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeScreenSalePartWidget(),
                  HomeScreenNewSalePartWidget(),
                  HomeScreenYouMayLikeSalePartWidget(),
                  HomeScreenPopularSalePartWidget(),
                  HomeScreenSummerSalePartWidget(),
                ],
              ),
            ),

          ],
        ),
        ),
      ),
    );
  }
}
