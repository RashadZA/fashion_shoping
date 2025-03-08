import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/profile/controllers/orders/my_orders_screen_controller.dart';
import 'package:fashion_shoping/features/profile/data/models/oder_model.dart';
import 'package:fashion_shoping/features/profile/presentation/widgets/order/order_status_selector.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrdersScreen extends GetWidget<MyOrdersScreenController> {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context,orientation) {
        return SafeArea(
          top: false,
          child: Scaffold(
            backgroundColor: scaffoldBackgroundColor,
            body: Column(
              children: [
                const SizedBox(
                  height: 45,
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Get.back(),
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      Text(
                        "My Orders",
                        style: AppTextTheme.text26,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const OrderStatusSelector(),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: Get.height - 140,
                  child: Obx(()=> controller.isDataLoading.value
                      ? const ListViewPlaceHolder().showShimmer()
                      : ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(left: 15,right: 15,bottom: 40,top: 0,),
                      itemCount: controller.selectedTypeOfOrder.value == delivered
                          ? controller.deliveredOrderModelList.length
                          : controller.selectedTypeOfOrder.value == cancelled
                          ? controller.cancelledOrderModelList.length
                          : controller.processingOrderModelList.length,
                      separatorBuilder: (context, index)=> const SizedBox(height: 15.0),
                      itemBuilder: (context, index) {
                        OrderModel orderModel = controller.selectedTypeOfOrder.value == delivered
                              ? controller.deliveredOrderModelList[index]
                              : controller.selectedTypeOfOrder.value == cancelled
                              ? controller.cancelledOrderModelList[index]
                              : controller.processingOrderModelList[index];
                        final double cardWidth = Get.width - 60;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: cardWidth * .7,
                                  child: Text(
                                    "Order No: ${orderModel.orderNo}",
                                    style: AppTextTheme.text16.copyWith(overflow: TextOverflow.visible),
                                  ),
                                ),
                                SizedBox(
                                  width: cardWidth * .3,
                                  child: Text(
                                    orderModel.orderDate ?? "",
                                    textAlign: TextAlign.end,
                                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                text: "Tracking Number: ",
                                style: AppTextTheme.text16
                                    .copyWith(color: secondaryTextColor),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: orderModel.orderTrackingNumber,
                                    style: AppTextTheme.text16,
                                  ),
                                ],),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: cardWidth * .4,
                                  child: RichText(
                                    text: TextSpan(
                                        text: "Quantity: ",
                                        style: AppTextTheme.text16
                                            .copyWith(color: secondaryTextColor),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "${orderModel.orderQuantity}",
                                            style: AppTextTheme.text16,
                                          )
                                        ]),
                                  ),
                                ),
                                SizedBox(
                                  width: cardWidth * .6,
                                  child: RichText(
                                    textAlign: TextAlign.end,
                                    text: TextSpan(
                                        text: "Total Amount: ",
                                        style: AppTextTheme.text16
                                            .copyWith(color: secondaryTextColor),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: orderModel.orderTotalAmount,
                                            style: AppTextTheme.text16,
                                          )
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CoreButton(
                                  // onPressed: () => controller.myOrderCardOnPressed(orderModel: orderModel),
                                  onPressed: () => Get.toNamed(
                                    Routes.orderDetailsScreen,
                                    arguments: orderModel,
                                  ),
                                  child: Container(
                                    width: 98,
                                    height: 36,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: blackColor)),
                                    child: Center(
                                      child: Text(
                                        "Details",
                                        style: AppTextTheme.text16,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  orderModel.orderStatus ?? "",
                                  style: AppTextTheme.text18.copyWith(
                                      color: orderModel.orderStatus == delivered
                                          ? greenColor
                                          : orderModel.orderStatus == cancelled
                                          ? redAccentColor
                                          : blueAccentColor),
                                ),
                              ],
                            ),
                          ],
                        ).defaultContainer();
                      }),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
