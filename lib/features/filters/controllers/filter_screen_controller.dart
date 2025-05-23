import 'package:fashion_shoping/core/components/dataModels/common_name_id_type_data_response_model.dart';
import 'package:fashion_shoping/core/components/dataModels/common_response_model_for_id_name.dart';
import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/filters/models/color_response_model.dart';
import 'package:fashion_shoping/features/filters/presentation/widgets/brand_bottom_sheet_widget.dart';
import 'package:fashion_shoping/features/shop/data/models/shop_category_item_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterScreenController extends GetxController {

  final TextEditingController brandSearchFieldTextEditController = TextEditingController();

  RxList<ColorDataModel> colorList = <ColorDataModel>[].obs;
  RxList<ColorDataModel> selectedColorList = <ColorDataModel>[].obs;
  RxList<CommonResponseModelForIdName> itemSizeList = <CommonResponseModelForIdName>[].obs;
  RxList<CommonResponseModelForIdName> selectedItemSizeList = <CommonResponseModelForIdName>[].obs;
  RxList<CommonResponseModelForIdName> itemBrandList = <CommonResponseModelForIdName>[].obs;
  RxList<CommonResponseModelForIdName> itemBrandBackUpList = <CommonResponseModelForIdName>[].obs;
  RxList<CommonResponseModelForIdName> selectedItemBrandList = <CommonResponseModelForIdName>[].obs;
  RxList<ShopCategoryItemDataModel> shopCategoryItemTypeList = <ShopCategoryItemDataModel>[].obs;
  RxList<ShopCategoryItemDataModel> selectedShopCategoryItemTypeList = <ShopCategoryItemDataModel>[].obs;

  Rx<ShopCategoryItemResponseModel> shopCategoryItemResponse = ShopCategoryItemResponseModel().obs;
  Rx<CommonNameIdTypeDataResponseModel> itemSizeResponseModel = CommonNameIdTypeDataResponseModel().obs;
  Rx<CommonNameIdTypeDataResponseModel> itemBrandResponseModel = CommonNameIdTypeDataResponseModel().obs;
  Rx<ColorResponseModel> colorResponseModel = ColorResponseModel().obs;
  Rx<RangeValues> priceRangeValues = const RangeValues(70, 150).obs;

  RxBool filterScreenDataProcessing = false.obs;
  RxBool brandBottomSheetSearchTextFieldSuffixIconIsTapped = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    filterScreenDataProcessing.value = true;

    /// Color part
    colorResponseModel.value = ColorResponseModel.fromJson(colorSampleData);
    colorList.value = colorResponseModel.value.data ?? <ColorDataModel>[];
    selectedColorList.value =<ColorDataModel>[];
    selectedColorList.add(colorList.first);

    /// Item Size part
    itemSizeResponseModel.value = CommonNameIdTypeDataResponseModel.fromJson(itemSizeSampleData);
    itemSizeList.value = itemSizeResponseModel.value.data ?? <CommonResponseModelForIdName>[];
    selectedItemSizeList.value =<CommonResponseModelForIdName>[];
    selectedItemSizeList.add(itemSizeList.first);

    /// Shop Category Item List part
    shopCategoryItemResponse.value = ShopCategoryItemResponseModel.fromJson(shopCategoriesItemSampleData);
    shopCategoryItemTypeList.value = shopCategoryItemResponse.value.data ?? <ShopCategoryItemDataModel>[];
    selectedShopCategoryItemTypeList.value =<ShopCategoryItemDataModel>[];
    selectedShopCategoryItemTypeList.add(shopCategoryItemTypeList.first);

    /// Item brand part
    itemBrandResponseModel.value = CommonNameIdTypeDataResponseModel.fromJson(itemBrandSampleData);
    itemBrandList.value = itemBrandResponseModel.value.data ?? <CommonResponseModelForIdName>[];
    itemBrandBackUpList.value = itemBrandResponseModel.value.data ?? <CommonResponseModelForIdName>[];
    selectedItemBrandList.value =<CommonResponseModelForIdName>[];
    selectedItemBrandList.add(itemBrandList.first);


    filterScreenDataProcessing.value = false;
    update();
  }

  Future<void> priceRangeOnchangeMethod(RangeValues rangeValue) async {
    priceRangeValues.value = rangeValue;
    update();
  }

  /// Color part
  Future<void> colorOnPressedMethod(ColorDataModel color) async {
    if (selectedColorList.contains(color)) {
      selectedColorList.remove(color);
    } else {
      selectedColorList.add(color);
    }
    update();
  }
  bool isColorSelected(ColorDataModel color) {
    return selectedColorList.any((element) => element.id == color.id);
  }

  /// Item Size part
  Future<void> itemSizeOnPressedMethod(CommonResponseModelForIdName itemSize) async {
    if (selectedItemSizeList.contains(itemSize)) {
      selectedItemSizeList.remove(itemSize);
    } else {
      selectedItemSizeList.add(itemSize);
    }
    update();
  }
  bool isItemSizeSelected(CommonResponseModelForIdName itemSize) {
    return selectedItemSizeList.any((element) => element.id == itemSize.id);
  }

  /// Item Size part
  Future<void> shopCategoryItemTypeOnPressedMethod(ShopCategoryItemDataModel shopCategoryItemType) async {
    if (selectedShopCategoryItemTypeList.contains(shopCategoryItemType)) {
      selectedShopCategoryItemTypeList.remove(shopCategoryItemType);
    } else {
      selectedShopCategoryItemTypeList.add(shopCategoryItemType);
    }
    update();
  }
  bool isShopCategoryItemTypeSelected(ShopCategoryItemDataModel shopCategoryItemType) {
    return selectedShopCategoryItemTypeList.any((element) => element.id == shopCategoryItemType.id);
  }


  /// Item Brand part
  String formatNamesList(List<CommonResponseModelForIdName> items) {
    final names = items.map((e) => e.name ?? '').where((name) => name.isNotEmpty).toList();
    if (names.isEmpty) return '';
    if (names.length == 1) return names[0];
    if (names.length == 2) return '${names[0]} & ${names[1]}';
    return '${names.sublist(0, names.length - 1).join(', ')} & ${names.last}';
  }

  Future<void> branCardOnPressedMethod() async {
    itemBrandList.value = <CommonResponseModelForIdName>[];
    itemBrandList.addAll(itemBrandBackUpList);
    Get.bottomSheet(
      BrandBottomSheetWidget(),
      isScrollControlled: true,
      // isDismissible: false,
    );
    update();
  }

  Future<void> itemBrandOnPressedMethod(CommonResponseModelForIdName itemBrand) async {
    if (selectedItemBrandList.contains(itemBrand)) {
      selectedItemBrandList.remove(itemBrand);
    } else {
      selectedItemBrandList.add(itemBrand);
    }
    update();
  }
  Future<void> brandBottomSheetSearchTextFieldSuffixIconOnPressedMethod() async {
    if(brandSearchFieldTextEditController.text.isEmpty){
      itemBrandList.value = <CommonResponseModelForIdName>[];
      itemBrandList.addAll(itemBrandBackUpList);
      "Please enter name".infoSnackBar();
    } else{
      List<CommonResponseModelForIdName> tempList = itemBrandBackUpList.where((brand)=> (brand.name ?? "").contains(brandSearchFieldTextEditController.text)).toList();
      itemBrandList.value = tempList;
    }
    update();
  }
  bool isItemBrandSelected(CommonResponseModelForIdName itemSize) {
    return selectedItemBrandList.any((element) => element.id == itemSize.id);
  }

}