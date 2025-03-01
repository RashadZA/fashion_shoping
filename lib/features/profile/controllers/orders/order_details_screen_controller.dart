import 'package:fashion_shoping/features/profile/data/models/oder_model.dart';
import 'package:fashion_shoping/features/profile/data/models/order_item_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetailsScreenController extends GetxController {

  RxBool orderDetailsDataLoading = false.obs;

  RxList<OrderItemModel> orderItemsList = <OrderItemModel>[].obs;

  OrderModel? orderDetails;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    orderDetailsDataLoading.value = true;
    orderDetails = Get.arguments;
    debugPrint("argument: ${orderDetails?.toJson()}");
    orderItemsList.value = orderDetails?.orderItems ?? <OrderItemModel>[];
    orderDetailsDataLoading.value = false;
    update();
  }


  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}