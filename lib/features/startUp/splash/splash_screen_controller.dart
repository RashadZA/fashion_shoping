import 'dart:async';
import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:get/get.dart';


class SplashScreenController extends GetxController {


  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
   Future.delayed(const Duration(seconds: 2)).then((value) async {
     Get.offAllNamed(Routes.signInScreen);
   });
  }
}