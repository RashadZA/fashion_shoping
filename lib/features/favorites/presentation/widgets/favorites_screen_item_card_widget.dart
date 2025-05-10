import 'package:fashion_shoping/core/components/widgets/rating_star_custom_widget.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/bag/controllers/bag_screen_controller.dart';
import 'package:fashion_shoping/features/favorites/data/favorites_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesScreenItemCardWidget extends StatelessWidget {
  final FavoritesItemDataModel item;
  const FavoritesScreenItemCardWidget({super.key, required this.item,});

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
                        Icons.clear,
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
                                text: " ${item.itemUnitPrice ?? 0.0}\$",
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
