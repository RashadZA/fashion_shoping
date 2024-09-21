import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/widgets/core_textField.dart';
import 'package:fashion_shoping/features/bag/controllers/bag_screen_controller.dart';
import 'package:fashion_shoping/features/bag/data/promo_codes_response_model.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoCodesBottomSheetWidget extends GetWidget<BagScreenController> {
  const PromoCodesBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context,orientation) {
        return Container(
          width: Get.width,
          height: (Get.height * 0.5),
          padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 0),
          decoration: const BoxDecoration(
            color: scaffoldBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            )
          ),
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      width: 80,
                      height: 8,
                      decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(defaultBorderRadius)
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CoreTextField(
                    hintText: "Enter your promo code",
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    controller: controller.promoCodeTextEditController,
                    suffixIcon: controller.promoCodesBottomSheetTextFieldSuffixIconIsTapped.value ? SizedBox(
                      width: 25,
                      height: 25,
                      child: defaultLoaderOfCupertinoActivity(color: primaryColor),
                    ) : IconButton(
                      onPressed: ()=> controller.promoCodesBottomSheetTextFieldSuffixIconOnPressedMethod(),
                      icon: const Icon(
                        Icons.arrow_forward_outlined,
                        size: 25,
                      ),),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 30,
                    width: Get.width,
                    child: Text(
                      "Your Promo Codes",
                      style: AppTextTheme.text22,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: Get.width,
                    height: (Get.height * 0.5) - 144,
                    child:  ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(bottom: 0.0),
                      separatorBuilder: (context,index){
                        return  const SizedBox(
                          height: 15,
                        );
                      },
                      itemCount: controller.promoCodesList.length,
                      itemBuilder: (context,index){
                        return Column(
                          children: [
                            PromoCodesBottomSheetCardWidget(promoCode: controller.promoCodesList[index],),
                            SizedBox(
                              height: index + 1 == controller.promoCodesList.length ? 15 : 0,
                            )
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }
    );
  }
}
class PromoCodesBottomSheetCardWidget extends GetWidget<BagScreenController> {
  final PromoCodesDataModel promoCode;
  const PromoCodesBottomSheetCardWidget({super.key, required this.promoCode});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: Get.width - 10,
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
            height: 100,
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
                    width: 100,
                    decoration: const BoxDecoration(
                      color: primaryColor,
                    ),
                  ) : ImageErrorHandle(
                    height: 100,
                    width: 100,
                    borderRadius: const BorderRadiusDirectional.only(
                      topStart: Radius.circular(defaultBorderRadius),
                      bottomStart: Radius.circular(defaultBorderRadius),
                    ),
                    // fit:BoxFit.cover,
                    imageUrl: promoCode.promoCodeImage ?? "",
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 100,
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
                        height: 100,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: (Get.width - 150) * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: (Get.width - 150) * 0.5,
                        child: Text(
                          promoCode.promoCodesTitle ?? "",
                          style: AppTextTheme.text16,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: (Get.width - 150) * 0.5,
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: (Get.width - 150) * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: (Get.width - 150) * 0.5,
                        child: Text(
                          "${promoCode.promoCodesRemainDays ?? 0} days remaining",
                          textAlign: TextAlign.center,
                          style: AppTextTheme.text15.copyWith(
                            color: secondaryTextColor,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CoreButton(
                        onPressed: ()=> controller.promoCodesBottomSheetApplyButtonOnPressedMethod(promoCode: promoCode),
                        child: Container(
                          height: 30,
                          width: (Get.width - 150) * 0.4,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow:  [
                              BoxShadow(
                                blurRadius: 3,
                                offset: const Offset(0, 2),
                                color: primaryColor.withOpacity(0.5),
                              ),
                            ],
                          ),
                          child: controller.promoCodesBottomSheetApplyButtonIsTapped.value ? SizedBox(
                            width: 25,
                              height: 25,
                              child: defaultLoaderOfCupertinoActivity(color: primaryColor),
                          ) : Text(
                            "Apply",
                            textAlign: TextAlign.center,
                            style: AppTextTheme.text15.copyWith(color: whiteColor),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
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

