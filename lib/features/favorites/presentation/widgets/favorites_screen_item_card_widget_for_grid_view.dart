import 'package:fashion_shoping/core/components/widgets/buttons/icon_custom_button.dart';
import 'package:fashion_shoping/core/components/widgets/rating_star_custom_widget.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/favorites/data/favorites_response_model.dart';
import 'package:flutter/material.dart';

class FavoritesScreenItemCardWidgetForGridView extends StatelessWidget {
  final FavoritesItemDataModel item;
  final double width;
  final double height;
  const FavoritesScreenItemCardWidgetForGridView({
    super.key,
    required this.item,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: containerShadow,
        color: whiteColor,
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 180,
                    width: width,
                    decoration: const BoxDecoration(
                      color: greyColor,
                      shape: BoxShape.circle,
                    ),
                    child: ImageErrorHandle(
                      height: 180,
                      width: width,
                      borderRadius: const BorderRadiusDirectional.only(
                        topStart: Radius.circular(defaultBorderRadius),
                        topEnd: Radius.circular(defaultBorderRadius),
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
                  Positioned(
                      top: 5,
                      right: 5,
                      child: Icon(
                        Icons.clear,
                        size: 25,
                        color: primaryColor,
                      )
                  ),
                ],
              ),
              Container(
                width: width,
                padding: const EdgeInsets.only(left: 10.0,right: 10,top: 5,bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RatingStarCustomWidget(rating: item.rating ?? 0.0,iconSize: 15,width: 75,),
                        Flexible(
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
                    const SizedBox(height: 5,),
                    Text(
                      item.itemDescription ?? "",
                      style: AppTextTheme.text14.copyWith(color: secondaryTextColor),
                    ),
                    Text(
                      item.itemName ?? "",
                      style: AppTextTheme.text18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          // color: Colors.green,
                          width: (width - 25) * 0.6,
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
                          // color: Colors.yellow,
                          width: (width - 25) * 0.4,
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
                    (item.discount ?? 0.0) > 0 ? RichText(
                      text: TextSpan(
                          text: "${item.itemUnitPrice ?? 0.0}\$",
                          style: AppTextTheme.text16.copyWith(
                            color: secondaryTextColor,
                            decoration: TextDecoration.lineThrough,
                          ),
                          children: [
                            TextSpan(
                              text: "  ${calculateDiscountedPrice(
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
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 150,
            right: 0,
            child: IconCustomButton(
              onPressed: (){},
              iconData: Icons.shopping_bag,
              iconColor: whiteColor,
              backgroundColor: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
