import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/paymentMethod/controllers/payment_method_screen_controller.dart';
import 'package:fashion_shoping/features/paymentMethod/models/payment_method_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethodScreenCardWidget extends GetWidget<PaymentMethodScreenController> {
  final CardDataModel card;
  const PaymentMethodScreenCardWidget({super.key, required this.card,});

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(defaultBorderRadius),
              child: Container(
                height: 220,
                width: Get.width,
                decoration: BoxDecoration(
                  boxShadow: containerShadow,
                  borderRadius: BorderRadius.circular(defaultBorderRadius),
                ),
                child: Image.asset(
                  controller.selectedCard.value.cardId == card.cardId
                      ? "assets/images/Card.png" : "assets/images/Card 2.png",
                  height: 220,
                  width: Get.width,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 35,
                    height: 25,
                    decoration: BoxDecoration(
                      color: masterCardColorThree,
                      borderRadius: BorderRadius.circular(defaultBorderRadius),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 25,
                    width: Get.width,
                    child: Text(
                      maskCardNumber(card.cardNumber ?? ""),
                      style: AppTextTheme.text22.copyWith(
                        color: whiteColor,
                        // fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 45,
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 45,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Card Holder Name",
                                style: AppTextTheme.text14.copyWith(
                                  color: whiteColor,
                                  // fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                card.cardName ?? "",
                                style: AppTextTheme.text15.copyWith(
                                  color: whiteColor,
                                  // fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 45,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Expire Date",
                                style: AppTextTheme.text14.copyWith(
                                  color: whiteColor,
                                  // fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                card.cardExpiredDate ?? "",
                                style: AppTextTheme.text15.copyWith(
                                  color: whiteColor,
                                  // fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 15,
              right: 10,
              child: CoreButton(
                onPressed: ()=> controller.addOrEditPaymentMethodButtonOnPressedMethod(card: card),
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
        ),
        const SizedBox(
          height: 10,
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
                  "Use as payment method",
                  textAlign: TextAlign.end,
                  style: AppTextTheme.text16,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Obx(()=> CoreButton(
                onPressed: ()=> controller.setAsADefaultShippingAddress(card),
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultBorderRadius),
                    color: controller.selectedCard.value.cardId == card.cardId ? primaryColor : whiteColor,
                    border: Border.all(
                      width: 1,
                      color: controller.selectedCard.value.cardId == card.cardId ? primaryColor : defaultBorderColorOne,
                    ),
                    boxShadow:  [
                      BoxShadow(
                        blurRadius: 0.5,
                        offset:const Offset(0, 0.5),
                        color: controller.selectedCard.value.cardId == card.cardId
                            ? primaryColor.withOpacity(0.5) : defaultBorderColorOne.withOpacity(0.5),
                      ),
                      BoxShadow(
                        blurRadius: 1,
                        offset:const Offset(0, 1),
                        color: controller.selectedCard.value.cardId == card.cardId
                            ? primaryColor.withOpacity(0.5) : defaultBorderColorOne.withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: controller.selectedCard.value.cardId == card.cardId ? const Icon(
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
    ),);
  }
}
