import 'package:get/get.dart';

class MainScreenController extends GetxController {


  RxInt newIndex = 0.obs;

  RxBool mainScreenDataLoading = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    mainScreenDataLoading.value = true;
    mainScreenDataLoading.value = false;
  }

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