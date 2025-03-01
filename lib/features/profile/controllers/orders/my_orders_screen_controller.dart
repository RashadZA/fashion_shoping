import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/core/utils/demo_data.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/profile/data/models/oder_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrdersScreenController extends GetxController {

  RxList<String> orderStatusModelList = <String>[].obs;

  RxList<OrderModel> orderModelList = <OrderModel>[].obs;
  RxList<OrderModel> deliveredOrderModelList = <OrderModel>[].obs;
  RxList<OrderModel> processingOrderModelList = <OrderModel>[].obs;
  RxList<OrderModel> cancelledOrderModelList = <OrderModel>[].obs;

  Rx<MyOrdersResponseModel> myOrdersResponse = MyOrdersResponseModel().obs;

  RxString selectedTypeOfOrder = "".obs;

  RxBool isDataLoading = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    isDataLoading.value = true;
    deliveredOrderModelList.value = <OrderModel>[];
    processingOrderModelList.value = <OrderModel>[];
    cancelledOrderModelList.value = <OrderModel>[];
    orderStatusModelList.value = orderTypeSampleDataList;
    selectedTypeOfOrder.value = delivered;
    myOrdersResponse.value = MyOrdersResponseModel.fromJson(myOrderSampleData);
    orderModelList.value = myOrdersResponse.value.data ?? <OrderModel>[];
    for (OrderModel order in orderModelList) {
      if (order.orderStatus == delivered) {
        deliveredOrderModelList.add(order);
      } else if (order.orderStatus == cancelled) {
        cancelledOrderModelList.add(order);
      } else {
        processingOrderModelList.add(order);
      }
    }
    debugPrint("Order List Length: ${orderModelList.length}");
    debugPrint("Delivered Order List Length: ${deliveredOrderModelList.length}");
    debugPrint("Processing Order List Length: ${processingOrderModelList.length}");
    debugPrint("Cancelled Order List Length: ${cancelledOrderModelList.length}");
    isDataLoading.value = false;
    update();
  }

  Future<void> onOrderStatusPressedFunction({required String orderStatusModel}) async {
    selectedTypeOfOrder.value = orderStatusModel;
    debugPrint("Selected Type Of Order: $selectedTypeOfOrder");
    update();
  }

  Future<void> myOrderCardOnPressed({required OrderModel orderModel}) async {
    Get.toNamed(
      Routes.orderDetailsScreen,
      arguments: orderModel,
    );
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}