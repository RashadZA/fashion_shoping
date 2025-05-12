import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/shop/data/models/shop_category_item_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopScreenCategoryItemCardWidget extends StatelessWidget {
  final ShopCategoryItemDataModel item;
  const ShopScreenCategoryItemCardWidget({super.key, required this.item,});

  @override
  Widget build(BuildContext context) {
    return  CoreButton(
      onPressed: ()=> Get.toNamed(Routes.shopCatalogScreen,parameters: {"name": item.name ?? "Catalog"}),
      child: Container(
        height: 100,
        width: Get.width,
        decoration: BoxDecoration(
          boxShadow: containerShadow,
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultBorderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 120,
              decoration: const BoxDecoration(
                color: greyColor,
                shape: BoxShape.circle,
              ),
              child: ImageErrorHandle(
                height: 100,
                width: 120,
                borderRadius: const BorderRadiusDirectional.only(
                  topStart: Radius.circular(defaultBorderRadius),
                  bottomStart: Radius.circular(defaultBorderRadius),
                ),
                // fit:BoxFit.cover,
                imageUrl: item.imageUrl ?? "",
              ),
            ),
            Container(
              height: 100,
              width: Get.width - 150,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                item.name ?? "",
                style: AppTextTheme.text18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
