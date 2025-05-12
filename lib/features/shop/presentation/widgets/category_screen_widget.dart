import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/shop/controllers/shop_screen_controller.dart';
import 'package:fashion_shoping/features/shop/presentation/widgets/shop_screen_category_item_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreenWidget extends GetWidget<ShopScreenController> {
  const CategoryScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(()=>ListView(
      padding: const EdgeInsets.only(left: 15,top: 15,right: 15,bottom: 15),
      children: [
        // Promo Banner
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          width: Get.width,
          child: Column(
            children: [
              Text(
                'SUMMER SALES',
                style: AppTextTheme.text20.copyWith(color: whiteColor),
              ),
              Text(
                'Up to ${controller.selectedTabIndex.value == 0 ? 50 :controller.selectedTabIndex.value == 1 ? 40 : 60}% off',
                style: AppTextTheme.text16.copyWith(color: whiteColor.withValues(alpha: .70)),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0),
        // Categories
        ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 0,right: 0,bottom: 0,top: 0,),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.shopCategoryItemTypeList.length,
          separatorBuilder: (context, index)=> const SizedBox(height: 15.0),
          itemBuilder: (context, index)=> ShopScreenCategoryItemCardWidget(item: controller.shopCategoryItemTypeList[index]),
        ),
      ],
    ),);
  }
}
