import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/bag/controllers/check_out_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderSuccessfulDialog extends GetWidget<CheckOutScreenController> {
  const OrderSuccessfulDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 5,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      child: Container(
        width: Get.width,
        height: Get.height * 0.6,
        decoration: BoxDecoration(
          boxShadow: containerShadow,
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultBorderRadius),
        ),
        child: ListView(
          children: [
            Center(
              child: Image.asset(
                "assets/images/bags.png",
                width: 250,
                height: 250,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Success!",
              textAlign: TextAlign.center,
              style: AppTextTheme.text22.copyWith(
                fontWeight:  FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: Get.width,
              child: Text(
                "You order will be delivered soon...",
                textAlign: TextAlign.center,
                style: AppTextTheme.text16.copyWith(
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: Get.width,
              child: Text(
                "Thanks for using our app...",
                textAlign: TextAlign.center,
                style: AppTextTheme.text16.copyWith(
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: CoreButton(
                onPressed: ()=> controller.orderSuccessfulDialogContinueShoppingButtonOnPressedMethod(),
                child: Container(
                  height: 50,
                  width: Get.width * 0.6,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        offset: const Offset(0, 1),
                        color: primaryColor.withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: Text(
                    "Continue Shopping",
                    textAlign: TextAlign.center,
                    style: AppTextTheme.text18.copyWith(
                      color: whiteColor,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}