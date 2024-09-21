import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/bag/data/promo_codes_response_model.dart';
import 'package:fashion_shoping/features/profile/controllers/promoCode/promo_code_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoCodeCardWidget extends GetWidget<PromoCodeScreenController> {
  final PromoCodesDataModel promoCode;
  const PromoCodeCardWidget({super.key, required this.promoCode});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      width: Get.width,
      decoration: BoxDecoration(
        boxShadow: containerShadow,
        color: whiteColor,
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            // height: 100,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadiusDirectional.only(
                    topStart: Radius.circular(defaultBorderRadius),
                    bottomStart: Radius.circular(defaultBorderRadius),
                  ),
                  child: promoCode.promoCodeImage == null || promoCode.promoCodeImage != null && promoCode.promoCodeImage!.isEmpty
                      ?  Container(
                    height: 100,
                    // width: 100,
                    decoration: const BoxDecoration(
                      color: primaryColor,
                    ),
                  ) : ImageErrorHandle(
                    height: 100,
                    // width: 100,
                    borderRadius: const BorderRadiusDirectional.only(
                      topStart: Radius.circular(defaultBorderRadius),
                      bottomStart: Radius.circular(defaultBorderRadius),
                    ),
                    // fit:BoxFit.cover,
                    imageUrl: promoCode.promoCodeImage ?? "",
                  ),
                ),
                Container(
                  width: 100,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  // height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        // height: 100,
                        color: transparentColor,
                        alignment: Alignment.centerRight,
                        child: Text(
                            "${promoCode.promoCodesValue ?? 0}",
                            textAlign: TextAlign.center,
                            style: AppTextTheme.text34.copyWith(
                                color: promoCode.promoCodeImage == null || promoCode.promoCodeImage != null && promoCode.promoCodeImage!.isEmpty
                                    ? whiteColor : primaryColor
                            )
                        ),
                      ),
                      Container(
                        width: 40,
                        // height: 100,
                        color: transparentColor,
                        alignment: Alignment.centerLeft,
                        child: Text(
                            promoCode.promoCodesType == percentage ? "% off" : "\$ off",
                            // textAlign: TextAlign.left,
                            style: AppTextTheme.text18.copyWith(
                                overflow: TextOverflow.visible,
                                color: promoCode.promoCodeImage == null || promoCode.promoCodeImage != null && promoCode.promoCodeImage!.isEmpty
                                    ? whiteColor : primaryColor
                            )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            // height: 100,
            width: Get.width - 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: Get.width - 130,
                  child: Text(
                    promoCode.promoCodesTitle ?? "",
                    style: AppTextTheme.text16,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: Get.width - 130,
                  child: Text(
                    promoCode.promoCodesId ?? "",
                    style: AppTextTheme.text14.copyWith(
                      fontWeight: FontWeight.normal,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: Get.width - 130,
                  child: Text(
                    "${promoCode.promoCodesRemainDays ?? 0} days remaining",
                    style: AppTextTheme.text15.copyWith(
                      color: secondaryTextColor,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}