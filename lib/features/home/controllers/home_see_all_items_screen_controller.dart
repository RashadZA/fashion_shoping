import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/features/home/presentation/models/home_screen_slider_response_model.dart';
import 'package:fashion_shoping/features/home/presentation/models/item_response_model.dart';
import 'package:get/get.dart';

class HomeSeeAllItemsScreenController extends GetxController {

  RxList<HomeScreenSliderDataModel> sliderList = <HomeScreenSliderDataModel>[].obs;
  RxList<ItemDataModel> saleItemList = <ItemDataModel>[].obs;
  RxList<ItemDataModel> summerSaleItemList = <ItemDataModel>[].obs;
  RxList<ItemDataModel> newItemList = <ItemDataModel>[].obs;
  RxList<ItemDataModel> youMayLikeList = <ItemDataModel>[].obs;
  RxList<ItemDataModel> popularItemList = <ItemDataModel>[].obs;

  Rx<HomeScreenSliderResponseModel> domeScreenSliderResponseModel = HomeScreenSliderResponseModel().obs;
  Rx<ItemResponseModel> saleItemResponseModel = ItemResponseModel().obs;
  Rx<ItemResponseModel> summerSaleItemResponseModel = ItemResponseModel().obs;
  Rx<ItemResponseModel> newItemResponseModel = ItemResponseModel().obs;
  Rx<ItemResponseModel> youMayLikeItemResponseModel = ItemResponseModel().obs;
  Rx<ItemResponseModel> popularItemResponseModel = ItemResponseModel().obs;

  RxInt sliderCurrentIndex = 0.obs;

  RxBool homeScreenDataOnProcessing = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    homeScreenDataOnProcessing.value = true;

    /// Slider List Part
    domeScreenSliderResponseModel.value = HomeScreenSliderResponseModel.fromJson(dataForSliderList);
    sliderList.value = domeScreenSliderResponseModel.value.data ?? <HomeScreenSliderDataModel>[];

    /// Sale Item List Part
    saleItemResponseModel.value = ItemResponseModel.fromJson(itemSampleData);
    saleItemList.value = saleItemResponseModel.value.data ?? <ItemDataModel>[];

    /// New Item List Part
    newItemResponseModel.value = ItemResponseModel.fromJson(newSaleItemSampleData);
    newItemList.value = newItemResponseModel.value.data ?? <ItemDataModel>[];

    /// You May Item List Part
    youMayLikeItemResponseModel.value = ItemResponseModel.fromJson(youMayLikeItemSampleData);
    youMayLikeList.value = youMayLikeItemResponseModel.value.data ?? <ItemDataModel>[];

    /// Sale Item List Part
    popularItemResponseModel.value = ItemResponseModel.fromJson(popularItemSampleData);
    popularItemList.value = popularItemResponseModel.value.data ?? <ItemDataModel>[];

    /// Summer Sale Item List Part
    summerSaleItemResponseModel.value = ItemResponseModel.fromJson(itemSampleData);
    summerSaleItemList.value = saleItemResponseModel.value.data ?? <ItemDataModel>[];

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