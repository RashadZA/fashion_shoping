import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/profile/controllers/orders/order_details_screen_controller.dart';
import 'package:fashion_shoping/features/profile/presentation/widgets/order/order_item_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class OrderDetailsScreen extends GetWidget<OrderDetailsScreenController> {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final double deviceWidth = Get.width - (defaultPadding + defaultPadding);
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: ()=> Get.back(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Order Details",
          style: AppTextTheme.text18.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Obx(()=>  ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding,
          vertical: defaultPadding,
        ),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: deviceWidth * .7,
                child: Text(
                  "Order No: ${controller.orderDetails?.orderNo ?? ""}",
                  style: AppTextTheme.text16.copyWith(
                    overflow: TextOverflow.visible,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: deviceWidth * .3,
                child: Text(
                  controller.orderDetails?.orderDate ?? "",
                  textAlign: TextAlign.end,
                  style:
                  AppTextTheme.text16.copyWith(color: secondaryTextColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: deviceWidth - 100,
                child: RichText(
                  text: TextSpan(
                    text: "Tracking Number: ",
                    style: AppTextTheme.text14.copyWith(color: secondaryTextColor),
                    children: <TextSpan>[
                      TextSpan(
                        text: controller.orderDetails?.orderTrackingNumber,
                        style: AppTextTheme.text14,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  textAlign: TextAlign.end,
                  controller.orderDetails?.orderStatus ?? "",
                  style: AppTextTheme.text18.copyWith(
                    color: controller.orderDetails?.orderStatus == delivered ? greenColor
                        : controller.orderDetails?.orderStatus == cancelled ? redAccentColor : blueAccentColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "${controller.orderDetails?.orderQuantity ?? 0} items",
            style:
            AppTextTheme.text15.copyWith(overflow: TextOverflow.visible),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.orderItemsList.length,
              // padding: const EdgeInsets.all(0.0),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    index == 0
                        ? const SizedBox(
                      height: 15,
                    )
                        : const SizedBox(
                      height: 0.0,
                      width: 0.0,
                    ),
                    OrderItemCard(
                      orderItemModel: controller.orderItemsList[index],
                    ),
                    SizedBox(
                      height: index + 1 == controller.orderItemsList.length ? 5 : 15,
                    ),
                  ],
                );
              }),
          SizedBox(
            width: deviceWidth,
            child: Text(
              controller.orderDetails?.orderShippingAddress ?? "",
              textAlign: TextAlign.end,
              style: AppTextTheme.text15.copyWith(overflow: TextOverflow.visible),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: deviceWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 140,
                  child: Text(
                    "Payment Method",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: 10,
                  child: Text(
                    ":",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: deviceWidth - 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 30,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              left: 5,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: masterCardColorOne,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 5,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: masterCardColorTwo,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        controller.orderDetails?.orderPaymentMethod ?? "",
                        style: AppTextTheme.text16.copyWith(overflow: TextOverflow.visible),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: deviceWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 140,
                  child: Text(
                    "Delivery Method",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: 10,
                  child: Text(
                    ":",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: deviceWidth - 150,
                  child: Text(
                    controller.orderDetails?.orderDeliveryMethod ?? "",
                    style: AppTextTheme.text16.copyWith(overflow: TextOverflow.visible),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: deviceWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 140,
                  child: Text(
                    "Discount",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: 10,
                  child: Text(
                    ":",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: deviceWidth - 150,
                  child: Text(
                    controller.orderDetails?.orderDiscount ?? "",
                    style: AppTextTheme.text16.copyWith(overflow: TextOverflow.visible),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: deviceWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 140,
                  child: Text(
                    "Total Amount",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: 10,
                  child: Text(
                    ":",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: deviceWidth - 150,
                  child: Text(
                    controller.orderDetails?.orderTotalAmount ?? "",
                    style: AppTextTheme.text16.copyWith(overflow: TextOverflow.visible),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: deviceWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CoreButton(
                  onPressed: (){},
                  child: Container(
                    height: 40,
                    width: deviceWidth * 0.45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: defaultCardColorOne,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            offset: const Offset(0, 1),
                            color: defaultBorderColorOne.withOpacity(0.3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          width: 2,
                          color: defaultBorderColorOne,
                        )
                    ),
                    child: Text(
                      "Reorder",
                      textAlign: TextAlign.center,
                      style: AppTextTheme.text16,
                    ),
                  ),
                ),
                CoreButton(
                  onPressed: (){},
                  child: Container(
                    height: 40,
                    width: deviceWidth * 0.45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            offset: const Offset(0, 1),
                            color: primaryColor.withOpacity(0.5),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          width: 2,
                          color: primaryColor,
                        )
                    ),
                    child: Text(
                      "Leave Feedback",
                      textAlign: TextAlign.center,
                      style: AppTextTheme.text16.copyWith(color: whiteColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
      ),
    );
  }
}
class OrderDetailsScreenShimmerEffect extends StatelessWidget {
  const OrderDetailsScreenShimmerEffect({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = Get.width - (defaultPadding + defaultPadding);
    return  SizedBox(
      width: Get.width,
      height: Get.height,
      // child: defaultLoaderOfCupertinoActivity(color: primaryColor),
      child: Shimmer.fromColors(
        baseColor: primaryColor,
        highlightColor: primaryColor.withOpacity(0.5),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding,
            vertical: defaultPadding,
          ),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 25,
                  width: deviceWidth * .6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Container(
                  height: 25,
                  width: deviceWidth * .25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 25,
                  width: deviceWidth - 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Container(
                  height: 25,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 25,
              width: deviceWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                // padding: const EdgeInsets.all(0.0),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      index == 0
                          ? const SizedBox(
                        height: 15,
                      )
                          : const SizedBox(
                        height: 0.0,
                        width: 0.0,
                      ),
                      Container(
                        height: 126,
                        width: deviceWidth,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  );
                }),
            Container(
              height: 25,
              width: deviceWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 25,
              width: deviceWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 25,
              width: deviceWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 25,
              width: deviceWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 25,
              width: deviceWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: deviceWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: deviceWidth * 0.45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  Container(
                    height: 40,
                    width: deviceWidth * 0.45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}


