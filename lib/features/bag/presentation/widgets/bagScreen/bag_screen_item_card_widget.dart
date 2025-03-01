import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/bag/controllers/bag_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BagScreenItemCardWidget extends GetWidget<BagScreenController> {
  final int index;
  const BagScreenItemCardWidget({super.key, required this.index,});

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = Get.width - 10;
    return  Obx(()=> Container(
      height: 126,
      width: deviceWidth,
      decoration: BoxDecoration(
        boxShadow: containerShadow,
        color: whiteColor,
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      child: Stack(
        children: [
          Row(
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
                    imageUrl: controller.myBagItemList[index].itemImageUrl ?? "",
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
                        controller.myBagItemList[index].itemName ?? "",
                        style: AppTextTheme.text18,
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
                              controller.myBagItemList[index].itemSize ?? "" ,
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
                              controller.myBagItemList[index].itemColor ?? "",
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CoreButton(
                                onPressed: ()=> controller.bagScreenItemCardWidgetMinusButtonOnPressedMethod(index: index),
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: cardColor,
                                    shape: BoxShape.circle,
                                    boxShadow: containerShadow,
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    color: blackColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                child: Text(
                                  "${controller.myBagItemList[index].itemUnits ?? 0}",
                                  textAlign: TextAlign.center,
                                  style: AppTextTheme.text14,
                                ),
                              ),
                              CoreButton(
                                onPressed: ()=> controller.bagScreenItemCardWidgetPlusButtonOnPressedMethod(index: index),
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: cardColor,
                                    shape: BoxShape.circle,
                                    boxShadow: containerShadow,
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: blackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: deviceWidth - 286,
                            child: Text(
                              "${controller.myBagItemList[index].itemTotalPrice ?? 0}\$",
                              textAlign: TextAlign.end,
                              style: AppTextTheme.text16,
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
          ),
          Positioned(
            top: 0,
            right: 0,
            child: PopupMenuButton<int>(
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Add To Favorites",
                    textAlign: TextAlign.center,
                    style: AppTextTheme.text16,
                  ),
                ),

                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "Delete From The List",
                    textAlign: TextAlign.center,
                    style: AppTextTheme.text16,
                  ),
                ),
              ],
              offset: const Offset(-40, 0),
              color: cardColor,
              iconColor: secondaryTextColor,
              elevation: 2,
              // on selected we show the dialog box
              onSelected: (value) {
                if (value == 1) {
                  debugPrint("Pop Up Menu 1");
                } else if (value == 2) {
                  controller.removeFromList(index: index);
                  debugPrint("Pop Up Menu 2");
                }
              },
            ),
          )
        ],
      ),
    ),
    );
  }
}
