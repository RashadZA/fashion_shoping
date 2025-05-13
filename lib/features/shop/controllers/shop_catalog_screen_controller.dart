import 'package:fashion_shoping/core/components/bottomSheet/short_by_bootom_sheet_widget.dart';
import 'package:fashion_shoping/core/components/dataModels/common_name_id_type_data_response_model.dart';
import 'package:fashion_shoping/core/components/dataModels/common_response_model_for_id_name.dart';
import 'package:fashion_shoping/core/components/dataModels/short_by_item_response_model.dart';
import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/favorites/data/favorites_response_model.dart';
import 'package:get/get.dart';

class ShopCatalogScreenController extends GetxController {

  RxList<FavoritesItemDataModel> favoritesItemList = <FavoritesItemDataModel>[].obs;
  RxList<CommonResponseModelForIdName> itemTypeList = <CommonResponseModelForIdName>[].obs;
  RxList<ShortByItemDataModel> shortByItemList = <ShortByItemDataModel>[].obs;

  Rx<FavoritesResponseModel> favoritesResponse = FavoritesResponseModel().obs;
  Rx<CommonNameIdTypeDataResponseModel> itemTypeResponse = CommonNameIdTypeDataResponseModel().obs;
  Rx<ShortByItemResponseModel> shortByItemResponse = ShortByItemResponseModel().obs;
  Rx<ShortByItemDataModel> selectedShortByItem = ShortByItemDataModel().obs;

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

    /// Item Type List Part
    itemTypeResponse.value = CommonNameIdTypeDataResponseModel.fromJson(itemTypeSampleData);
    itemTypeList.value = itemTypeResponse.value.data ?? <CommonResponseModelForIdName>[];

    /// Item Short By List Part
    shortByItemResponse.value = ShortByItemResponseModel.fromJson(shortByItemSampleData);
    shortByItemList.value = shortByItemResponse.value.data ?? <ShortByItemDataModel>[];
    selectedShortByItem.value = shortByItemList.firstWhere(
        (shortBy)=> shortBy.id == lowestToHighestKey,
        orElse: () => shortByItemList.first,
    );


    sortFavorites(selectedShortByItem.value);

    favoritesScreenDataProcessing.value = false;
    update();
  }

  Future<void> showByItemOnPressedMethod() async {
    Get.bottomSheet(
      ShortByBottomSheetWidget(
        itemList: shortByItemList,
        selectedItem: selectedShortByItem.value,
        onPressed: (item)=> showByItemBottomSheetOnPressedMethod(item),
      ),
      isScrollControlled: true,
      // isDismissible: false,
    );
    update();
  }
  Future<void> showByItemBottomSheetOnPressedMethod(ShortByItemDataModel item) async {
    Get.back();
    selectedShortByItem.value = item;
    sortFavorites(item);
    update();
  }

  Future<void> showItemInListOrGridViewTypeOnPressedMethod() async {
    showItemListInListView.value = !showItemListInListView.value;
    update();
  }

  void sortFavorites(ShortByItemDataModel sortType) {
    final sortedList = [...favoritesItemList];

    switch (sortType.id) {
      case pulloverKey :
        sortedList.where((item) => item.itemType == pulloverKey);
        break;
      case berriesKey:
          sortedList.where((item) => item.itemType == berriesKey);
          break;

          case mangoKey :
            sortedList.where((item) => item.itemType == mangoKey);
            break;

            case limeKey:
              sortedList.where((item) => item.itemType == limeKey);
              break;

              case lowestToHighestKey :
                sortedList.sort((a, b) => (a.itemUnitPrice ?? 0).compareTo(b.itemUnitPrice ?? 0));
                break;

                case highestToLowestKey:
                  sortedList.sort((a, b) => (b.itemUnitPrice ?? 0).compareTo(a.itemUnitPrice ?? 0));
                  break;

                  case discountLowestToHighestKey:
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

                    case discountHighestToLowestKey:
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

}