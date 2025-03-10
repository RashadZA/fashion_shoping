import 'package:fashion_shoping/core/components/dataModels/common_name_id_type_data_response_model.dart';
import 'package:fashion_shoping/core/components/dataModels/common_response_model_for_id_name.dart';
import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/features/home/presentation/models/item_response_model.dart';
import 'package:fashion_shoping/features/product/presentation/widgets/product_details_shipping_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductRatingAndReviewScreenController extends GetxController {

  RxList<String> productImageList = <String>[].obs;
  RxList<ItemDataModel> youMayLikeList = <ItemDataModel>[].obs;
  RxList<CommonResponseModelForIdName> itemSizeList = <CommonResponseModelForIdName>[].obs;
  RxList<CommonResponseModelForIdName> colorList = <CommonResponseModelForIdName>[].obs;

  Rx<ItemResponseModel> youMayLikeItemResponseModel = ItemResponseModel().obs;
  Rx<CommonNameIdTypeDataResponseModel> itemSizeResponseModel = CommonNameIdTypeDataResponseModel().obs;
  Rx<CommonResponseModelForIdName> selectedItemSize = CommonResponseModelForIdName().obs;
  Rx<CommonNameIdTypeDataResponseModel> colorResponseModel = CommonNameIdTypeDataResponseModel().obs;
  Rx<CommonResponseModelForIdName> selectedColor = CommonResponseModelForIdName().obs;

  RxInt sliderCurrentIndex = 0.obs;

  RxBool productDetailsScreenDataOnProcessing = false.obs;
  RxBool reviewWithPhotos = true.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    productDetailsScreenDataOnProcessing.value = true;

    /// Product Image List Part
    productImageList.value = productImageListSampleData;

    /// Item Size
    itemSizeResponseModel.value = CommonNameIdTypeDataResponseModel.fromJson(itemSizeSampleData);
    itemSizeList.value = itemSizeResponseModel.value.data ?? <CommonResponseModelForIdName>[];
    selectedItemSize.value = itemSizeList.firstWhere(
        (size) => size.id == "Large",
      orElse: ()=> itemSizeList.first,
    );

    /// Item Color
    colorResponseModel.value = CommonNameIdTypeDataResponseModel.fromJson(colorSampleData);
    colorList.value = colorResponseModel.value.data ?? <CommonResponseModelForIdName>[];
    selectedColor.value = colorList.firstWhere(
          (color) => color.id == "BLACK",
      orElse: ()=> colorList.first,
    );


    /// You May Item List Part
    youMayLikeItemResponseModel.value = ItemResponseModel.fromJson(youMayLikeItemSampleData);
    youMayLikeList.value = youMayLikeItemResponseModel.value.data ?? <ItemDataModel>[];

    debugPrint("Get.width: ${Get.width}");
    debugPrint("Calculated width: ${(Get.width - 110) * 0.5}");

    productDetailsScreenDataOnProcessing.value = false;
  }

  /// Item Size Drop Down Related Part
  Future<List<CommonResponseModelForIdName>> filterItemSize(String filter) async {
    debugPrint("filter: $filter");
    if (filter.isEmpty) {
      return itemSizeList;
    }
    return itemSizeList.where((size) => (size.name ?? "").toLowerCase().contains(filter.toLowerCase()) ).toList();
  }

  Future<void> itemSizeDropDownOnChangeMethod(CommonResponseModelForIdName? item) async {
    selectedItemSize.value = item ?? CommonResponseModelForIdName();
  }

  /// Item Color Drop Down Related Part
  Future<List<CommonResponseModelForIdName>> filterItemColor(String filter) async {
    debugPrint("filter: $filter");
    if (filter.isEmpty) {
      return colorList;
    }
    return colorList.where((size) => (size.name ?? "").toLowerCase().contains(filter.toLowerCase()) ).toList();
  }

  Future<void> itemColorDropDownOnChangeMethod(CommonResponseModelForIdName? item) async {
    selectedColor.value = item ?? CommonResponseModelForIdName();
  }

  Future<void> shippingInfoButtonOnPressedMethod() async {
    Get.bottomSheet(
      const ProductDetailsShippingInfo(),
    );
  }

  Future<void> checkBoxOnPressedMethod() async {
    reviewWithPhotos.value = !reviewWithPhotos.value;
    update();
  }


  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}