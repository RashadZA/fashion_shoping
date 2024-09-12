import 'package:get/get.dart';

class MainScreenController extends GetxController {


  RxInt newIndex = 0.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {}

  /// Bottom Navigation Bar onItemSelected method
  Future<void> bottomNavigationBarOnItemSelected(int index) async {
    newIndex.value = index;
    update();
  }

  Future<void> close() async {
    newIndex.value = 0;
    update();
  }

  @override
  void onClose() {
    close();
    super.onClose();
  }

}