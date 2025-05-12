import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/features/shop/data/models/shop_category_item_response_model.dart';
import 'package:get/get.dart';

class ShopScreenController extends GetxController {

  RxList<ShopCategoryItemDataModel> shopCategoryItemTypeList = <ShopCategoryItemDataModel>[].obs;

  Rx<ShopCategoryItemResponseModel> shopCategoryItemResponse = ShopCategoryItemResponseModel().obs;

  RxInt selectedTabIndex = 0.obs;

  RxBool shopScreenDataProcessing = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    shopScreenDataProcessing.value = true;

    /// Shop Category Item List part
    shopCategoryItemResponse.value = ShopCategoryItemResponseModel.fromJson(shopCategoriesItemSampleData);
    shopCategoryItemTypeList.value = shopCategoryItemResponse.value.data ?? <ShopCategoryItemDataModel>[];

    shopScreenDataProcessing.value = false;
    update();
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}