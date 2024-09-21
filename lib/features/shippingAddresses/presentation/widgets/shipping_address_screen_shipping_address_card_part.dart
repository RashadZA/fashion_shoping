import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/bag/data/shipping_address_response_model.dart';
import 'package:fashion_shoping/features/shippingAddresses/controllers/shipping_addresses_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippingAddressScreenShippingAddressCardPart extends GetWidget<ShippingAddressesScreenController> {
  final ShippingAddressDataModel shippingAddress;
  const ShippingAddressScreenShippingAddressCardPart({super.key, required this.shippingAddress,});

  @override
  Widget build(BuildContext context) {
    String shippingAddressRestOfThePartWithoutRoad
    = (shippingAddress.shippingAddressCity != null && shippingAddress.shippingAddressCity!.isNotEmpty
        ? "${shippingAddress.shippingAddressCity ?? ""}, " : "")
        +(shippingAddress.shippingAddressRegion != null && shippingAddress.shippingAddressRegion!.isNotEmpty
            ? "${shippingAddress.shippingAddressRegion ?? ""}, " : "")
        +(shippingAddress.shippingAddressZIPCountry != null && shippingAddress.shippingAddressZIPCountry!.isNotEmpty
            ? shippingAddress.shippingAddressZIPCountry ?? "" : "");
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: Get.width,
              child: Text(
                shippingAddress.shippingAddressName ?? "",
                style: AppTextTheme.text16.copyWith(
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
            SizedBox(
              width: Get.width,
              child: Text(
                shippingAddress.shippingAddressRoad ?? "",
                style: AppTextTheme.text16.copyWith(
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
            SizedBox(
              width: Get.width,
              child: Text(
                shippingAddressRestOfThePartWithoutRoad,
                style: AppTextTheme.text16.copyWith(
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
            SizedBox(
              width: Get.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: Get.width - 95,
                    child: Text(
                      "Use as shipping address",
                      textAlign: TextAlign.end,
                      style: AppTextTheme.text16,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Obx(()=> CoreButton(
                    onPressed: ()=> controller.setAsADefaultShippingAddress(shippingAddress),
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(defaultBorderRadius),
                        color: controller.selectedShippingAddress.value.shippingAddressId == shippingAddress.shippingAddressId ? primaryColor : whiteColor,
                        border: Border.all(
                          width: 1,
                          color: controller.selectedShippingAddress.value.shippingAddressId == shippingAddress.shippingAddressId ? primaryColor : defaultBorderColorOne,
                        ),
                        boxShadow:  [
                          BoxShadow(
                            blurRadius: 0.5,
                            offset:const Offset(0, 0.5),
                            color: controller.selectedShippingAddress.value.shippingAddressId == shippingAddress.shippingAddressId
                                ? primaryColor.withOpacity(0.5) : defaultBorderColorOne.withOpacity(0.5),
                          ),
                          BoxShadow(
                            blurRadius: 1,
                            offset:const Offset(0, 1),
                            color: controller.selectedShippingAddress.value.shippingAddressId == shippingAddress.shippingAddressId
                                ? primaryColor.withOpacity(0.5) : defaultBorderColorOne.withOpacity(0.5),
                          ),
                        ],
                      ),
                      child: controller.selectedShippingAddress.value.shippingAddressId == shippingAddress.shippingAddressId ? const Icon(
                        Icons.check,
                        size: 20,
                        color: whiteColor,
                      ) : const SizedBox(
                        width: 0,
                        height: 0,
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ).defaultContainer(),
        Positioned(
          top: 15,
          right: 10,
          child: CoreButton(
            onPressed: ()=> controller.shippingAddressEditTextButtonOnPressedMethod(),
            child: Text(
              "Edit",
              style: AppTextTheme.text16.copyWith(
                color: primaryColor,
                overflow: TextOverflow.visible,
              ),
            ),
          ),
        ),
      ],
    );
  }
}