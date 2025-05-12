import 'package:fashion_shoping/core/components/dataModels/common_name_id_type_data_response_model.dart';
import 'package:fashion_shoping/core/components/dataModels/common_response_model_for_id_name.dart';
import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/favorites/data/favorites_response_model.dart';
import 'package:get/get.dart';

class ShopCatalogScreenController extends GetxController {

  RxList<FavoritesItemDataModel> favoritesItemList = <FavoritesItemDataModel>[].obs;
  RxList<CommonResponseModelForIdName> itemTypeList = <CommonResponseModelForIdName>[].obs;

  Rx<FavoritesResponseModel> favoritesResponse = FavoritesResponseModel().obs;
  Rx<CommonNameIdTypeDataResponseModel> itemTypeResponse = CommonNameIdTypeDataResponseModel().obs;

  RxString itemShowAccordingToPriceType = lowestToHighestKey.obs;
  RxString appBarTitle = "Catalog".obs;

  RxBool favoritesScreenDataProcessing = false.obs;
  RxBool showItemListInListView = true.obs;


  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    favoritesScreenDataProcessing.value = true;

    appBarTitle.value = Get.parameters["name"] ?? "Catalog";

    /// Favorites Item List part
    favoritesResponse.value = FavoritesResponseModel.fromJson(favoritesSampleData);
    favoritesItemList.value = favoritesResponse.value.data ?? <FavoritesItemDataModel>[];
    sortFavorites(SortType.unitPriceLowToHigh);

    /// Item Type List Part
    itemTypeResponse.value = CommonNameIdTypeDataResponseModel.fromJson(itemTypeSampleData);
    itemTypeList.value = itemTypeResponse.value.data ?? <CommonResponseModelForIdName>[];

    favoritesScreenDataProcessing.value = false;
    update();
  }

  Future<void> showItemAccordingToPriceTypeOnPressedMethod() async {
    itemShowAccordingToPriceType.value = itemShowAccordingToPriceType.value == lowestToHighestKey ? highestToLowestKey : lowestToHighestKey;
    if(itemShowAccordingToPriceType.value == lowestToHighestKey){
      sortFavorites(SortType.unitPriceLowToHigh);
    } else{
      sortFavorites(SortType.unitPriceHighToLow);
    }
    update();
  }

  Future<void> showItemInListOrGridViewTypeOnPressedMethod() async {
    showItemListInListView.value = !showItemListInListView.value;
    update();
  }
  /// Sort: Low to High
  Future<void> sortItemByPriceLowToHigh() async {
    final sortedList = [...favoritesItemList];
    sortedList.sort((a, b) => (a.itemUnitPrice ?? 0).compareTo(b.itemUnitPrice ?? 0));
    favoritesItemList.assignAll(sortedList);
    update();
  }

  /// Sort: High to Low
  Future<void> sortItemByPriceHighToLow() async {
    final sortedList = [...favoritesItemList];
    sortedList.sort((a, b) => (b.itemUnitPrice ?? 0).compareTo(a.itemUnitPrice ?? 0));
    favoritesItemList.assignAll(sortedList);
    update();
  }

  void sortFavorites(SortType sortType) {
    final sortedList = [...favoritesItemList];

    switch (sortType) {
      case SortType.unitPriceLowToHigh:
        sortedList.sort((a, b) => (a.itemUnitPrice ?? 0).compareTo(b.itemUnitPrice ?? 0));
        break;
      case SortType.unitPriceHighToLow:
        sortedList.sort((a, b) => (b.itemUnitPrice ?? 0).compareTo(a.itemUnitPrice ?? 0));
        break;
      case SortType.discountedPriceLowToHigh:
        sortedList.sort((a, b) =>
            calculateDiscountedPrice(
              unitPrice: a.itemUnitPrice,
              discount: a.discount,
              discountType: a.discountType,
            ).compareTo(
              calculateDiscountedPrice(
                unitPrice: b.itemUnitPrice,
                discount: b.discount,
                discountType: b.discountType,
              ),
            ),
        );
        break;
      case SortType.discountedPriceHighToLow:
        sortedList.sort((a, b) =>
            calculateDiscountedPrice(
              unitPrice: b.itemUnitPrice,
              discount: b.discount,
              discountType: b.discountType,
            ).compareTo(
              calculateDiscountedPrice(
                unitPrice: a.itemUnitPrice,
                discount: a.discount,
                discountType: a.discountType,
              ),
            ),
        );
        break;
    }

    favoritesItemList.assignAll(sortedList);
    update();
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

  // void onItemTypeSelected(int index) {
  //   selectedItemTypeIndex.value = index;
  //   selectedItemTypeId = itemTypeList[index].id?.obs;
  //
  //   /// If you want to filter `favoritesItemList` based on the item type,
  //   /// you can implement a filtering method here.
  //   // filterItemsByType(selectedItemTypeId?.value);
  // }
  // void filterItemsByType(String? typeId) {
  //   if (typeId == null) return;
  //
  //   final filteredList = favoritesResponse.value.data?.where(
  //         (item) => item.itemTypeId == typeId, // or whatever matches your model
  //   ).toList();
  //
  //   favoritesItemList.assignAll(filteredList ?? []);
  //   update();
  // }




}