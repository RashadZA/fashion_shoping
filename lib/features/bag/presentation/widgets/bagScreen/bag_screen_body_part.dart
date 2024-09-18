import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_flat_button.dart';
import 'package:fashion_shoping/features/bag/controllers/bag_screen_controller.dart';
import 'package:fashion_shoping/features/bag/presentation/widgets/bagScreen/bag_screen_item_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BagScreenBodyPart extends GetWidget<BagScreenController> {
  const BagScreenBodyPart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Obx(()=> ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      children: [
        ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.all(0.0),
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context,index){
            return  const SizedBox(
              height: 15,
            );
          },
          itemCount: controller.myBagItemList.length,
          itemBuilder: (context,index){
            return BagScreenItemCardWidget(index: index,);
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CoreButton(
              onPressed: ()=> controller.promoCodesFieldOnTapMethod(),
              child: SizedBox(
                width: Get.width - 85,
                child: Text(
                  controller.selectedPromoCode.value.promoCodesId ?? "Enter your promo code",
                  style: AppTextTheme.text16.copyWith(
                    color: secondaryTextColor,
                  ),
                ),
              ),
            ),
            CoreButton(
              onPressed: ()=> controller.selectedPromoCode.value.promoCodesId != null ? controller.promoCodesFieldClearCloseButtonOnTapMethod() : controller.promoCodesFieldOnTapMethod(),
              child: SizedBox(
                width: 25,
                height: 25,
                child: controller.selectedPromoCode.value.promoCodesId != null ? const Icon(
                  Icons.close,
                  size: 25,
                  color: secondaryTextColor,
                ) : const Icon(
                  Icons.arrow_forward_outlined,
                  size: 25,
                  color: secondaryTextColor,
                ),
              ),
            )
          ],
        ).defaultContainer(),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Text(
                "Total amount : ",
                style: AppTextTheme.text16.copyWith(
                    color: secondaryTextColor
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text(
                "${controller.totalAmount.value}\$",
                textAlign: TextAlign.end,
                style: AppTextTheme.text18,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        CoreFlatButton(
          onPressed: ()=> controller.checkOutButtonOnPressedMethod(),
          borderRadius: 30,
          text: "CHECK OUT",
          isGradientBg: true,
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    ),
    );
  }
}
