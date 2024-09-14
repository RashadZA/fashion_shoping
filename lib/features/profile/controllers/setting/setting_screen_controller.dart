import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/profile/presentation/widgets/setting/setting_password_change_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreenController extends GetxController {

  RxBool settingDataLoading = false.obs;
  RxBool salesNotificationStatus = false.obs;
  RxBool newArrivalsNotificationStatus = false.obs;
  RxBool deliveryStatusChangeNotificationStatus = false.obs;

  TextEditingController oldPasswordTextEditController = TextEditingController();
  TextEditingController newPasswordTextEditController = TextEditingController();
  TextEditingController confirmPasswordTextEditController = TextEditingController();


  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    settingDataLoading.value = true;
    settingDataLoading.value = false;
    update();
  }

  Future<void> changePasswordTextButtonOnPressedMethod() async {
    Get.bottomSheet(
        const SettingPasswordChangeBottomSheetWidget(),
    );
  }

  Future<void> salesNotificationStatusChangeMethod(bool status) async {
    salesNotificationStatus.value = status;
    "Sales notification turn ${salesNotificationStatus.value ? "on" : "off"}".successSnackBar();
    update();
  }

  Future<void> newArrivalsNotificationStatusChangeMethod(bool status) async {
    newArrivalsNotificationStatus.value = status;
    "New arrivals notification turn ${newArrivalsNotificationStatus.value ? "on" : "off"}".successSnackBar();
    update();
  }

  Future<void> deliveryStatusChangeNotificationStatusChangeMethod(bool status) async {
    deliveryStatusChangeNotificationStatus.value = status;
    "Delivery status notification turn ${deliveryStatusChangeNotificationStatus.value ? "on" : "off"}".successSnackBar();
    update();
  }

  Future<void> settingPasswordChangeBottomSheetUpdatePasswordButtonOnPressedMethod() async {
    Get.back();
    "Password changed successfully".successSnackBar();
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}