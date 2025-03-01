import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/bag/controllers/check_out_screen_controller.dart';
import 'package:fashion_shoping/features/bag/presentation/widgets/checkOutScreen/check_out_screen_row_widget.dart';
import 'package:fashion_shoping/features/bag/presentation/widgets/checkOutScreen/check_out_screen_shiiping_address_card_part.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOutScreen extends GetWidget<CheckOutScreenController> {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: scaffoldAppBarColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: ()=> Get.back(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Check Out",
          style: AppTextTheme.text18.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Obx(()=> controller.checkOutScreenDataProcessing.value ? SizedBox(
        width: Get.width,
        height: Get.height,
        child: Center(
          child: defaultLoaderOfCupertinoActivity(color: primaryColor).defaultContainer(),
        ),
      ) : SizedBox(
        width: Get.width,
        height: Get.height,
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            Text(
              "Shipping Address",
              style: AppTextTheme.text18,
            ),
            const SizedBox(
              height: 15,
            ),
            const CheckOutScreenShippingAddressCardPart(),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment",
                  style: AppTextTheme.text16.copyWith(
                    overflow: TextOverflow.visible,
                  ),
                ),
                CoreButton(
                  onPressed: ()=> controller.paymentMethodChangeTextButtonOnPressedMethod(),
                  child: Text(
                    "Change",
                    style: AppTextTheme.text16.copyWith(
                      color: primaryColor,
                      overflow: TextOverflow.visible,
                    ),
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
                  maskCardNumber(controller.selectedCard.value.cardNumber ?? ""),
                  style: AppTextTheme.text16.copyWith(overflow: TextOverflow.visible),
                ),
              ],
            ).defaultContainer(),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Delivery Method",
              style: AppTextTheme.text16.copyWith(
                overflow: TextOverflow.visible,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              width: Get.width,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 3,
                padding: const EdgeInsets.all(0.0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return SizedBox(
                    height: 100,
                    width: (Get.width)* 0.21,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: (Get.width)* 0.21,
                            height: 35,
                            child: const Center(child: Icon(Icons.flutter_dash,size: 30,)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: (Get.width) * 0.21,
                          child: Text(
                            "2-3 days",
                            textAlign: TextAlign.center,
                            style: AppTextTheme.text16,
                          ),
                        ),
                      ],
                    ),
                  ).defaultContainer();
                  },
                separatorBuilder: (context,index){
                    return const SizedBox(
                      width: 15,
                    );
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CheckOutScreenRowWidget(
              title: "Order",
              value: controller.totalAmount.value.toString(),
            ),
            const SizedBox(
              height: 10,
            ),
            CheckOutScreenRowWidget(
              title: "Delivery",
              value: controller.deliveryCharge.value.toString(),
            ),
            const SizedBox(
              height: 10,
            ),
            CheckOutScreenRowWidget(
              title: "Order",
              value: (controller.totalAmount.value - controller.deliveryCharge.value).toString(),
            ),
            const SizedBox(
              height: 30,
            ),
            CoreButton(
              onPressed: ()=> controller.submitOrderButtonOnChangedMethod(),
              child: Container(
                height: 50,
                width: Get.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      offset: const Offset(0, 1),
                      color: primaryColor.withValues(alpha:0.5),
                    ),
                  ],
                ),
                child: Text(
                  "Submit Order",
                  textAlign: TextAlign.center,
                  style: AppTextTheme.text18.copyWith(
                    color: whiteColor,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
      ),
    );
  }
}



