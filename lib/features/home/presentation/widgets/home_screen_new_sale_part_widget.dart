import 'package:fashion_shoping/core/components/widgets/rating_star_custom_widget.dart';
import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/home/controllers/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenNewSalePartWidget extends GetWidget<HomeScreenController> {
  const HomeScreenNewSalePartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: Get.width - 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "New",
                    style: AppTextTheme.text34.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "You’ve never seen it before!",
                    style: AppTextTheme.text16.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            CoreButton(
              onPressed: ()=> Get.toNamed(Routes.homeSeeAllItemsScreen),
              child: SizedBox(
                // color: Colors.grey,
                width: 80,
                child: Text(
                  "View All",
                  textAlign: TextAlign.right,
                  style: AppTextTheme.text18.copyWith(
                    color: primaryColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 320,
          width: Get.width,
          child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              scrollDirection: Axis.horizontal,
              itemCount: controller.newItemList.length,
              separatorBuilder: (context, index)=> const SizedBox(height: 5.0),
              itemBuilder: (context, index)=> Card(
                  color: cardColor,
                  child: SizedBox(
                      width: 190,
                      height: 300,
                      // padding: const EdgeInsets.all(10.0),
                      child: Stack(
                        children: [
                          CoreButton(
                            onPressed: ()=> Get.toNamed(Routes.productDetailsScreen),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 184,
                                    width: 190,
                                    child: Stack(
                                      children: [
                                        ImageErrorHandle(
                                          height: 184,
                                          width: 190,
                                          fit:BoxFit.cover,
                                          imageUrl: controller.newItemList[index].itemImageUrl ?? "",
                                        ),
                                        Positioned(
                                          top: 10,
                                          left: 10,
                                          child: Container(
                                            width: 60,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(25),
                                              color: blackColor,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "New",
                                                style: AppTextTheme.text16.copyWith(
                                                  color: whiteColor,
                                                ),
                                              ),
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
                                      RatingStarCustomWidget(rating: index== 2 || index == 5 ? 4 : 5),
                                      SizedBox(
                                        width: 40,
                                        child: Text(
                                            "(${index== 2 || index == 5 ? 4 : 5})",
                                            style: AppTextTheme.text12.copyWith(
                                              fontWeight: FontWeight.normal,
                                              color: secondaryTextColor,
                                            )
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5, right: 5),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 180,
                                          child: Text(
                                              controller.newItemList[index].itemName ?? "",
                                              style: AppTextTheme.text14.copyWith(
                                                fontWeight: FontWeight.normal,
                                                // color: secondaryColor,
                                              )
                                          ),
                                        ),
                                        SizedBox(
                                          width: 180,
                                          child: Text(
                                              controller.newItemList[index].itemType ?? "",
                                              style: AppTextTheme.text16.copyWith(
                                                fontWeight: FontWeight.bold,
                                                // color: secondaryColor,
                                              )
                                          ),
                                        ),
                                        SizedBox(
                                          width: 180,
                                          child: (controller.newItemList[index].itemDiscountPrice ?? 0) == 0
                                              || controller.newItemList[index].itemDiscountPrice == controller.newItemList[index].itemUnitRegularPrice ? Text(
                                            "${controller.newItemList[index].itemUnitRegularPrice ?? 0}\$",
                                            style: AppTextTheme.text15.copyWith(
                                                fontWeight: FontWeight.normal,
                                            )
                                          ) : RichText(
                                              text: TextSpan(
                                                  text: "${controller.newItemList[index].itemUnitRegularPrice ?? 0}\$",
                                                  style: AppTextTheme.text15.copyWith(
                                                    // color: secondaryColor,
                                                      fontWeight: FontWeight.normal,
                                                      decoration: TextDecoration.lineThrough,
                                                      decorationThickness: 2
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: " ${controller.newItemList[index].itemDiscountPrice ?? 0}\$",
                                                      style: AppTextTheme.text15.copyWith(
                                                        color: redAccentColor,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ]
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ] ),
                          ),
                          Positioned(
                            top: 160,
                            right: 10,
                            child: CoreButton(
                              onPressed: (){},
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: cardColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 2,
                                      offset: Offset(0, 1),
                                      color: cardShadowColor,
                                    ),
                                    BoxShadow(
                                      blurRadius: 2,
                                      offset: Offset(0, 1),
                                      color: cardShadowColor,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Icon(
                                    index == 1 || index == 3 ? Icons.favorite : Icons.favorite_border,
                                    size: 30,
                                    color: index == 1 || index == 3 ? primaryColor : secondaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  )
              )
          ),
        ),
      ],
    ),
    );
  }
}
