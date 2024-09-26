import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/widgets/core_textField.dart';
import 'package:fashion_shoping/features/paymentMethod/controllers/payment_method_screen_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethodBottomSheetWidget extends GetWidget<PaymentMethodScreenController> {

  final bool isForEdit;

  const PaymentMethodBottomSheetWidget({super.key, required this.isForEdit,});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context,orientation) {
        return Container(
          width: Get.width,
          height: (Get.height * 0.9),
          padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 0),
          decoration: const BoxDecoration(
            color: scaffoldBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            )
          ),
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Center(
                child: Container(
                  width: 80,
                  height: 8,
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(defaultBorderRadius)
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 30,
                width: Get.width,
                child: Text(
                  "${isForEdit ? "Edit" : "Add New"} Card",
                  textAlign: TextAlign.center,
                  style: AppTextTheme.text22,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              titleText(title: "Name"),
              CoreTextField(
                hintText: "Card Holder Name",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: controller.cardHolderNameTextEditingController,
              ),
              const SizedBox(
                height: 10,
              ),
              titleText(title: "Number"),
              CoreTextField(
                hintText: "Card Number",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: controller.cardNumberTextEditingController,
              ),
              const SizedBox(
                height: 10,
              ),
              titleText(title: "Exp. Date"),
              CoreTextField(
                hintText: "Expired Date",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                controller: controller.cardExpiredDateTextEditingController,
              ),
              const SizedBox(
                height: 10,
              ),
              titleText(title: "CVV"),
              CoreTextField(
                hintText: "Card CVV",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                controller: controller.cardCVVTextEditingController,
              ),
              const SizedBox(
                height: 10,
              ),
              CoreButton(
                onPressed: ()=> controller.paymentMethodBottomSheetWidgetAddOrEditCardButton(isForEdit),
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
                        color: primaryColor.withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: Text(
                    "${isForEdit ? "Edit" : "Add"} Card",
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
        );
      }
    );
  }
}