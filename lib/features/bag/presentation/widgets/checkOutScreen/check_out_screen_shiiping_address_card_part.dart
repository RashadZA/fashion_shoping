import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/bag/controllers/check_out_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOutScreenShippingAddressCardPart extends GetWidget<CheckOutScreenController> {
  const CheckOutScreenShippingAddressCardPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: Get.width,
              child: Text(
                controller.selectedShippingAddress.value.shippingAddressName ?? "",
                style: AppTextTheme.text16.copyWith(
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
            SizedBox(
              width: Get.width,
              child: Text(
                controller.shippingAddressRoad.value,
                style: AppTextTheme.text16.copyWith(
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
            SizedBox(
              width: Get.width,
              child: Text(
                controller.shippingAddressRestOfThePartWithoutRoad.value,
                style: AppTextTheme.text16.copyWith(
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
          ],
        ).defaultContainer(),
        Positioned(
          top: 15,
          right: 10,
          child: CoreButton(
            onPressed: ()=> controller.shippingAddressChangeTextButtonOnPressedMethod(),
            child: Text(
              "Change",
              style: AppTextTheme.text16.copyWith(
                color: primaryColor,
                overflow: TextOverflow.visible,
              ),
            ),
          ),
        ),
      ],
    ),);
  }
}