import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/bag/data/my_bag_response_model.dart';
import 'package:fashion_shoping/features/bag/data/promo_codes_response_model.dart';
import 'package:fashion_shoping/features/bag/presentation/widgets/bagScreen/promo_codes_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BagScreenController extends GetxController {

  final TextEditingController promoCodeTextEditController = TextEditingController();

  RxList<MyBagItemDataModel> myBagItemList = <MyBagItemDataModel>[].obs;
  RxList<PromoCodesDataModel> promoCodesList = <PromoCodesDataModel>[].obs;

  Rx<MyBagResponseModel> myBagResponse = MyBagResponseModel().obs;
  Rx<PromoCodesResponseModel> promoCodesResponse = PromoCodesResponseModel().obs;
  Rx<PromoCodesDataModel> selectedPromoCode = PromoCodesDataModel().obs;

  RxBool myBagScreenDataProcessing = false.obs;
  RxBool promoCodesBottomSheetTextFieldSuffixIconIsTapped = false.obs;
  RxBool promoCodesBottomSheetApplyButtonIsTapped = false.obs;

  RxDouble totalAmount = 0.0.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    myBagScreenDataProcessing.value = true;

    /// My Bag part
    myBagResponse.value = MyBagResponseModel.fromJson(myBagSampleData);
    myBagItemList.value = myBagResponse.value.data ?? <MyBagItemDataModel>[];
    await calculateItemTotalAmount();

    /// Promo Codes part
    promoCodesResponse.value = PromoCodesResponseModel.fromJson(yourPromoCodesSampleData);
    promoCodesList.value = promoCodesResponse.value.data ?? <PromoCodesDataModel>[];

    myBagScreenDataProcessing.value = false;
    update();
  }

  Future<void> calculateItemTotalAmount() async {
    totalAmount.value = 0.0;
    for(MyBagItemDataModel item in myBagItemList){
      totalAmount.value += item.itemTotalPrice ?? 0.0;
    }
    await calculateItemTotalAmountWithDiscount();
    update();
  }



  Future<void> calculateItemTotalAmountWithDiscount() async {
   RxDouble discountAmount = 0.0.obs;
   if(selectedPromoCode.value.promoCodesType == fixedAmount){
     discountAmount.value = (selectedPromoCode.value.promoCodesValue ?? 0).toDouble();
   } else if(selectedPromoCode.value.promoCodesType == percentage){
     if((selectedPromoCode.value.promoCodesValue ?? 0) > 0){
       discountAmount.value = totalAmount.value * ((selectedPromoCode.value.promoCodesValue ?? 0)/100);
     }
   }
   totalAmount.value = totalAmount.value - discountAmount.value;
   update();
  }

  Future<void> updateSelectedExchangeMedicineList({required int index}) async {
      // If the medicine exists, update its values.
      MyBagItemDataModel previousItem = myBagItemList[index];
      update();
      myBagItemList[index] = MyBagItemDataModel(
        itemId: previousItem.itemId,
        itemImageUrl: previousItem.itemImageUrl,
        itemName: previousItem.itemName,
        itemDescription: previousItem.itemDescription,
        itemColor: previousItem.itemColor,
        itemSize: previousItem.itemSize,
        itemUnits: ((previousItem.itemUnits ?? 0) + 1),
        itemUnitPrice: previousItem.itemUnitPrice,
        itemTotalPrice: (((previousItem.itemUnits ?? 0) + 1) * (previousItem.itemUnitPrice ?? 0)),
      );
      update();
      await calculateItemTotalAmount();
      debugPrint("previousItem in index $index : ${previousItem.toJson()}");
      update();
  }

  Future<void> bagScreenItemCardWidgetPlusButtonOnPressedMethod({required int index}) async {
    // If the medicine exists, update its values.
    MyBagItemDataModel previousItem = myBagItemList[index];
    update();
    myBagItemList[index] = MyBagItemDataModel(
      itemId: previousItem.itemId,
      itemImageUrl: previousItem.itemImageUrl,
      itemName: previousItem.itemName,
      itemDescription: previousItem.itemDescription,
      itemColor: previousItem.itemColor,
      itemSize: previousItem.itemSize,
      itemUnits: ((previousItem.itemUnits ?? 0) + 1),
      itemUnitPrice: previousItem.itemUnitPrice,
      itemTotalPrice: (((previousItem.itemUnits ?? 0) + 1) * (previousItem.itemUnitPrice ?? 0)),
    );
    update();
    await calculateItemTotalAmount();
    debugPrint("previousItem in index $index : ${previousItem.toJson()}");
    update();
  }

  Future<void> bagScreenItemCardWidgetMinusButtonOnPressedMethod({required int index}) async {
    // If the medicine exists, update its values.
    MyBagItemDataModel previousItem = myBagItemList[index];
    update();
    myBagItemList[index] = MyBagItemDataModel(
      itemId: previousItem.itemId,
      itemImageUrl: previousItem.itemImageUrl,
      itemName: previousItem.itemName,
      itemDescription: previousItem.itemDescription,
      itemColor: previousItem.itemColor,
      itemSize: previousItem.itemSize,
      itemUnits: (previousItem.itemUnits ?? 0) > 1 ? ((previousItem.itemUnits ?? 0) - 1) : (previousItem.itemUnits ?? 0),
      itemUnitPrice: previousItem.itemUnitPrice,
      itemTotalPrice: (((previousItem.itemUnits ?? 0) > 1 ? ((previousItem.itemUnits ?? 0) - 1) : (previousItem.itemUnits ?? 0)) * (previousItem.itemUnitPrice ?? 0)),
    );
    update();
    await calculateItemTotalAmount();
    debugPrint("previousItem in index $index : ${previousItem.toJson()}");
    update();
  }

  Future<void> removeFromList({required int index}) async {
    myBagItemList.removeAt(index);
    await calculateItemTotalAmount();
    "Successfully remove from list".successSnackBar();
    update();
  }

  Future<void> promoCodesFieldOnTapMethod() async {
    Get.bottomSheet(
      const PromoCodesBottomSheetWidget(),
    );
  }

  Future<void> promoCodesFieldClearCloseButtonOnTapMethod() async {
    selectedPromoCode.value = PromoCodesDataModel();
    promoCodeTextEditController.clear();
    await calculateItemTotalAmount();
    update();
  }

  Future<void> promoCodesBottomSheetTextFieldSuffixIconOnPressedMethod() async {
      promoCodesBottomSheetTextFieldSuffixIconIsTapped.value = true;
      Rx<PromoCodesDataModel> tempData = PromoCodesDataModel().obs;
      for(PromoCodesDataModel promoCode in promoCodesList){
        if(promoCode.promoCodesId == promoCodeTextEditController.text){
          tempData.value = promoCode;
        }
      }
      selectedPromoCode.value = tempData.value;
      promoCodeTextEditController.text = tempData.value.promoCodesId ?? "";
      await calculateItemTotalAmount();
      Get.back();
      promoCodesBottomSheetTextFieldSuffixIconIsTapped.value = false;
      update();
  }

  Future<void> promoCodesBottomSheetApplyButtonOnPressedMethod({required PromoCodesDataModel promoCode}) async {
    if(promoCodesBottomSheetApplyButtonIsTapped.value){
      "Please wait...".infoSnackBar();
    } else {
      promoCodesBottomSheetApplyButtonIsTapped.value = true;
      selectedPromoCode.value = promoCode;
      promoCodeTextEditController.text = promoCode.promoCodesId ?? "";
      await calculateItemTotalAmount();
      Get.back();
      promoCodesBottomSheetApplyButtonIsTapped.value = false;
      update();
    }
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}