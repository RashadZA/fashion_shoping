import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:get/get.dart';

class ProfileScreenController extends GetxController {


  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {}
  
  Future<void> myOrderCardOnPressed() async {
    Get.toNamed(Routes.myOrdersScreen);
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}