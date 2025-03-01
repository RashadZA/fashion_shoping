import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/features/home/presentation/models/home_screen_slider_response_model.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {

  RxList<HomeScreenSliderDataModel> sliderList = <HomeScreenSliderDataModel>[].obs;
  Rx<HomeScreenSliderResponseModel> domeScreenSliderResponseModel = HomeScreenSliderResponseModel().obs;

  RxInt sliderCurrentIndex = 0.obs;

  RxBool homeScreenDataOnProcessing = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    homeScreenDataOnProcessing.value = true;
    domeScreenSliderResponseModel.value = HomeScreenSliderResponseModel.fromJson(dataForSliderList);
    sliderList.value = domeScreenSliderResponseModel.value.data ?? <HomeScreenSliderDataModel>[];
    homeScreenDataOnProcessing.value = false;
  }

  Future<void> sliderOnChangedMethod(int index) async {
    sliderCurrentIndex.value = index;
    update();
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}