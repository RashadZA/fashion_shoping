import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/startUp/splash/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetWidget<SplashScreenController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return SizedBox(
            width: Get.width,
            height: Get.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.flutter_dash,
                  size: 250,
                ),
                const SizedBox(height: 10,),
                defaultLoaderOfCircularProgressIndicator(color: whiteColor)
              ],
            ),
          );
        },
      ),
    );
  }
}
