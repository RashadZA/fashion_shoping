import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/features/favorites/data/favorites_response_model.dart';
import 'package:get/get.dart';

class FavoritesScreenController extends GetxController {

  RxList<FavoritesItemDataModel> favoritesItemList = <FavoritesItemDataModel>[].obs;

  Rx<FavoritesResponseModel> favoritesResponse = FavoritesResponseModel().obs;

  RxBool favoritesScreenDataProcessing = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    favoritesScreenDataProcessing.value = true;

    /// My Bag part
    favoritesResponse.value = FavoritesResponseModel.fromJson(favoritesSampleData);
    favoritesItemList.value = favoritesResponse.value.data ?? <FavoritesItemDataModel>[];

    favoritesScreenDataProcessing.value = false;
    update();
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}