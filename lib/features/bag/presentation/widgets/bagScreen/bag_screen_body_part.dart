import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_flat_button.dart';
import 'package:fashion_shoping/core/widgets/core_textField.dart';
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
          height: 15,
        ),
        CoreTextField(
          readOnly: true,
          hintText: "Enter your promo code",
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          controller: controller.promoCodeTextEditController,
          suffixIcon: IconButton(
            onPressed: ()=> controller.promoCodesFieldOnTapMethod(),
            icon: const Icon(
              Icons.arrow_forward_outlined,
              size: 25,
            ),),
          onTap: ()=> controller.promoCodesFieldOnTapMethod(),
        ),
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
          onPressed: (){},
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
