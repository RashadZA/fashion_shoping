import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/profile/data/models/order_item_model.dart';
import 'package:flutter/material.dart';

class OrderItemCard extends StatelessWidget {
  final OrderItemModel orderItemModel;
  const OrderItemCard({super.key, required this.orderItemModel});

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width - 10;
    return SizedBox(
      height: 126,
      width: deviceWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 126,
            width: 126,
            decoration: const BoxDecoration(
              color: greyColor,
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: const BorderRadiusDirectional.only(
                topStart: Radius.circular(defaultBorderRadius),
                bottomStart: Radius.circular(defaultBorderRadius),
              ),
              child: ImageErrorHandle(
                height: 126,
                width: 126,
                borderRadius: const BorderRadiusDirectional.only(
                  topStart: Radius.circular(defaultBorderRadius),
                  bottomStart: Radius.circular(defaultBorderRadius),
                ),
                // fit:BoxFit.cover,
                imageUrl: orderItemModel.orderImageUrl,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: deviceWidth - 166,
                  child: Text(
                      orderItemModel.orderItemDescription,
                    style: AppTextTheme.text18,
                  ),
                ),
                SizedBox(
                  width: deviceWidth - 166,
                  child: Text(
                      orderItemModel.orderItemName,
                    style: AppTextTheme.text14.copyWith(
                        color: secondaryTextColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: deviceWidth - 166,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 40,
                        child: Text(
                          "Color",
                          style: AppTextTheme.text14.copyWith(color: secondaryTextColor),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                        child: Text(
                          ":",
                          style: AppTextTheme.text14.copyWith(color: secondaryTextColor),
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth - 216,
                        child: Text(
                          orderItemModel.orderItemColor,
                          style: AppTextTheme.text14,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: deviceWidth - 166,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 40,
                        child: Text(
                          "Size",
                          style: AppTextTheme.text14.copyWith(color: secondaryTextColor),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                        child: Text(
                          ":",
                          style: AppTextTheme.text14.copyWith(color: secondaryTextColor),
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth - 216,
                        child: Text(
                          orderItemModel.orderItemSize,
                          style: AppTextTheme.text14,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: deviceWidth - 166,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: (deviceWidth - 166) * 0.7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 40,
                              child: Text(
                                "Color",
                                style: AppTextTheme.text14.copyWith(color: secondaryTextColor),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                              child: Text(
                                ":",
                                style: AppTextTheme.text14.copyWith(color: secondaryTextColor),
                              ),
                            ),
                            SizedBox(
                              width: (deviceWidth - 240) * 0.7,
                              child: Text(
                                orderItemModel.orderItemColor,
                                style: AppTextTheme.text14,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: (deviceWidth - 166) * 0.3,
                        child: Text(
                          orderItemModel.orderItemTotalPrice,
                          textAlign: TextAlign.end,
                          style: AppTextTheme.text14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ).defaultContainer(hP: 0,vP: 0),
    );
  }
}
