import 'package:fashion_shoping/core/API/service/api_repositories.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/bag/data/shipping_address_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddShippingAddresseScreenController extends GetxController {

  final APIRepository apiRepository = Get.find<APIRepository>();

  Rx<ShippingAddressDataModel> shippingAddress = ShippingAddressDataModel().obs;

  final TextEditingController nameTextEditController = TextEditingController();
  final TextEditingController roadAddressTextEditController = TextEditingController();
  final TextEditingController cityTextEditController = TextEditingController();
  final TextEditingController stateOrRegionTextEditController = TextEditingController();
  final TextEditingController zipCodeTextEditController = TextEditingController();
  final TextEditingController countryTextEditController = TextEditingController();

  RxBool addShippingAddressScreenDataProcessing = false.obs;
  RxBool saveAddressButtonIsTapped = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    addShippingAddressScreenDataProcessing.value = true;

    /// Set Routing Data
    shippingAddress.value = Get.arguments ?? ShippingAddressDataModel();
    if(shippingAddress.value.shippingAddressId != null){
      nameTextEditController.text = shippingAddress.value.shippingAddressName ?? "";
      roadAddressTextEditController.text = shippingAddress.value.shippingAddressRoad ?? "";
      cityTextEditController.text = shippingAddress.value.shippingAddressCity ?? "";
      stateOrRegionTextEditController.text = shippingAddress.value.shippingAddressRegion ?? "";
      zipCodeTextEditController.text = shippingAddress.value.shippingAddressZIPCode ?? "";
      countryTextEditController.text = shippingAddress.value.shippingAddressZIPCountry ?? "";
    } else {
      nameTextEditController.text =  "";
      roadAddressTextEditController.text = "";
      cityTextEditController.text = "";
      stateOrRegionTextEditController.text = "";
      zipCodeTextEditController.text = "";
      countryTextEditController.text = "";
    }

    addShippingAddressScreenDataProcessing.value = false;
    update();
  }

  Future<void> saveAddressButtonOnPressedMethod() async {
    saveAddressButtonIsTapped.value = true;

    nameTextEditController.text =  "";
    roadAddressTextEditController.text = "";
    cityTextEditController.text = "";
    stateOrRegionTextEditController.text = "";
    zipCodeTextEditController.text = "";
    countryTextEditController.text = "";
    Get.back();
    "Shipping address ${shippingAddress.value.shippingAddressId != null ? "edited" : "added"} successfully".successSnackBar();

    saveAddressButtonIsTapped.value = false;
    update();
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}