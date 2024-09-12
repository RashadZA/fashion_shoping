import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/profile/controllers/orders/my_orders_screen_controller.dart';
import 'package:fashion_shoping/features/profile/data/models/oder_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderCard extends GetWidget<MyOrdersScreenController> {
  final OrderModel orderModel;
  const OrderCard({super.key, required this.orderModel});

  @override
  Widget build(BuildContext context) {
    final double cardWidth = Get.width - 60;
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: cardWidth * .7,
                  child: Text(
                    "Order No: ${orderModel.orderNo}",
                    style: AppTextTheme.text16
                        .copyWith(overflow: TextOverflow.visible),
                  ),
                ),
                SizedBox(
                  width: cardWidth * .3,
                  child: Text(
                    orderModel.orderDate ?? "",
                    textAlign: TextAlign.end,
                    style: AppTextTheme.text16
                        .copyWith(color: secondaryTextColor),
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
        ).defaultContainer(),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
