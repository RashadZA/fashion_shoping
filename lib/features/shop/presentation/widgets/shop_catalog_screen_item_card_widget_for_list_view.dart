import 'package:fashion_shoping/core/components/widgets/rating_star_custom_widget.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/favorites/data/favorites_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopCatalogScreenItemCardWidgetForListView extends StatelessWidget {
  final FavoritesItemDataModel item;
  const ShopCatalogScreenItemCardWidgetForListView({super.key, required this.item,});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 146,
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 120,
                    width: 126,
                    decoration: const BoxDecoration(
                      color: greyColor,
                      shape: BoxShape.circle,
                    ),
                    child: ImageErrorHandle(
                      height: 120,
                      width: 126,
                      borderRadius: const BorderRadiusDirectional.only(
                        topStart: Radius.circular(defaultBorderRadius),
                        // bottomStart: Radius.circular(defaultBorderRadius),
                      ),
                      // fit:BoxFit.cover,
                      imageUrl: item.itemImageUrl ?? "",
                    ),
                  ),
                  (item.discount ?? 0.0) > 0.0 ? Positioned(
                    top: 5,
                      left: 5,
                      child: Container(
                        // height: 26,
                        // width: 62,
                        padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5,),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                            "-${(item.discount ?? 0.0).toStringAsFixed(1)}${item.discountType == percentageDiscountType ? "%" : "\$"}",
                          style: AppTextTheme.text15.copyWith(
                            color: whiteColor,
                          ),
                        ),
                      )
                  ) : Container(),
                ],
              ),
              SizedBox(
                height: 26,
                width: 126,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 26,
                      width: 62,
                      decoration: const BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadiusDirectional.only(
                          bottomStart: Radius.circular(defaultBorderRadius),
                        ),
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        size: 20,
                        color: whiteColor,
                      ),
                    ),
                    Container(
                      height: 26,
                      width: 2,
                      color: greyColor,
                    ),
                    Container(
                      height: 26,
                      width: 62,
                      color: primaryColor,
                      child: Icon(
                        Icons.shopping_bag,
                        size: 20,
                        color: whiteColor,
                      ),
                    ),
                  ]
                ),
              ),
            ],
          ),
          Container(
            height: 146,
            width: Get.width - 156,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  item.itemDescription ?? "",
                  style: AppTextTheme.text14.copyWith(color: secondaryTextColor),
                ),
                Text(
                  item.itemName ?? "",
                  style: AppTextTheme.text18,
                ),
                SizedBox(
                  width: Get.width - 176,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: (Get.width - 176) * 0.5,
                        child: RichText(
                          maxLines: 2,
                            text: TextSpan(
                              text: "Color :  ",
                              style: AppTextTheme.text14.copyWith(color: secondaryTextColor),
                              children: [
                                TextSpan(
                                  text: item.itemColor ?? "" ,
                                  style: AppTextTheme.text14,
                                ),
                              ]
                            ),
                        ),
                      ),
                      SizedBox(
                        width: (Get.width - 176) * 0.5,
                        child: RichText(
                            text: TextSpan(
                              text: "Size :  ",
                              style: AppTextTheme.text14.copyWith(color: secondaryTextColor),
                              children: [
                                TextSpan(
                                  text: item.itemSize ?? "" ,
                                  style: AppTextTheme.text14,
                                ),
                              ]
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: (Get.width - 176) - 140,
                      child: (item.discount ?? 0.0) > 0 ? RichText(
                        text: TextSpan(
                            text: "${item.itemUnitPrice ?? 0.0}\$",
                            style: AppTextTheme.text16.copyWith(
                              color: secondaryTextColor,
                              decoration: TextDecoration.lineThrough,
                            ),
                            children: [
                              TextSpan(
                                text: " ${calculateDiscountedPrice(
                                  unitPrice: item.itemUnitPrice,
                                  discount: item.discount,
                                  discountType: item.discountType,
                                )}\$",
                                style: AppTextTheme.text16.copyWith(
                                  color: primaryColor
                                ),
                              ),
                            ]
                        ),
                      ) : Text(
                        "${item.itemUnitPrice ?? 0.0}\$",
                        style: AppTextTheme.text16,
                      ),
                    ),
                    RatingStarCustomWidget(rating: item.rating ?? 0.0),
                    SizedBox(
                      width: 40,
                      child: Text(
                          "(${item.rating ?? 0.0})",
                          style: AppTextTheme.text12.copyWith(
                            fontWeight: FontWeight.normal,
                            color: secondaryTextColor,
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
